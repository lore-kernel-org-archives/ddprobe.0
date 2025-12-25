Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F8E24397A
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766628834; cv=none; b=itsDiBSWmUNsAApl/I+qgezkDpya9NwyNgOvH2SEsc6GSd+UIWEJ3BglA+nEzWvjrW8vUmIjXXUJ3Nuv4bqf28lh2DH/vh0sPoBFt3cZv+G41/eMVfLJIVq70UeCrQin4T3MLl9gGP82p9ozEpci9WS5LKYsaZHHxeGHZhcOx6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766628834; c=relaxed/simple;
	bh=cp6V8C836IoVGiXNk7oeQC68G6K8mDMN01CG1Wkbw0o=;
	h=To:Subject:From:Message-Id:Date; b=PvSRyIQdD2/jFamQcw7+gKap6SBQrUT4O4lhgndrMw/NtUgB07Xb9lQ460520UySYIVBiqoM48FSd4yo5oc5S7O2mTeaOK/dsJJeE4tGbVsceBDr8N6Fhtr0rBQYtmFzPUbQj93BzmQchjw6azNyGoCehqYDoUaQDyhDUvhQrlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlY9v7CF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlY9v7CF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79DCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766628833;
	bh=cp6V8C836IoVGiXNk7oeQC68G6K8mDMN01CG1Wkbw0o=;
	h=To:Subject:From:Date:From;
	b=WlY9v7CFnizFL+S4tnOHnrDSUO1VN/E14VD6sGb7xJ7SRsnPL9ddilxDxhwiBy5Nt
	 7eGiX91rp0WNFUhlLu3FkiO9yDN7gHIxquwwDfy+zYkIR53ACfAD+dVz+KxZGeNwN0
	 ipcspZApwcXridRZFSlZ0GAmZg5KTpAsKytRzNmLqSCNeW15P91rxSuGwoFMYV9GkL
	 EEHjHERv9PQNPtlWx9zM0jQU2pMCMT/OqTHXk7/enOLaxYZKbH+eRKLxuYOHaW07ye
	 DEluVA20tplE1NE8JZDT7TcX/WDOQlRHmS0xpuHCLuTRO6+H+vaazUpQ36eQULoAye
	 Ds1yUS4TydgaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F90E784B7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662883357.508.14809536559705084905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11cc67953f92fb58efb9530d20e76047f7577de1f5df2f1af82753e8889b83b1
Date: Thu, 25 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766628833
