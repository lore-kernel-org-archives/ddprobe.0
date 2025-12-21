Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139601B4257
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766304834; cv=none; b=uMfqefqxsRD9g9Sqjp6PXdW6LdcAvNvoqsyK7XPdjV9Of6TuoMRpJ/1mESHgiQ9NoJPlPd0wc3MQDZ6ILLITV+14jovXSMsM5puQ4TpFrgVcaNgnnbGa3qREF0HbGkgdW+tPhpCL6eYRlAthYWu6mL7kuEaotAgmvyYOPztEHWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766304834; c=relaxed/simple;
	bh=wjqDPr+hYE+nN4bcxReRde98jAcAm+BiUs7wDHG5L9k=;
	h=To:Subject:From:Message-Id:Date; b=qhgTBB6o6mEU7ZtFabA9r0xfIyeGW0snAfVa9f53+jtumGKDMDVF2/SSZXgt0ndIKWPtcwz+O44PA8lmjRnqndx0KJvrBYNlGMeuswGgix5lT8XwTgAJcb6ZIYxgohGKbNyPUZkS+mZNpExmbckTdePaEWIXa92KKxaBKDTV0rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sd7lcdRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sd7lcdRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E06FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766304833;
	bh=wjqDPr+hYE+nN4bcxReRde98jAcAm+BiUs7wDHG5L9k=;
	h=To:Subject:From:Date:From;
	b=sd7lcdRLUOf1FeC6NIUfFqJK4mOiIXXAkhpXX6TJWnFBvp1B0il9H3uxfKX5dnn0l
	 14k3IV56k0kbeqgihtz7xD9hLeoy03rCyCRtUB6Tyzcr/dB2TW1LGE2Eqdj/wwCom5
	 7ub5cB08uDrrXjdjlmw+R79xstx98Qa8SP2H3inEEU1LXN0QkZPdNu98dtHYpkXfZk
	 8KxiXRgQYljRYSAgxp+YCfsTLH0O3cNkVnNT0DPyIgbvu1A2vVVEDz8M6nNAoi2gQC
	 Ux47owxybzCzL52ckyO5sam6rwHaHVv2n/NJkB42ohIVO3lEEvr0IX5/qtY1+TPv7Y
	 qDNA9uE01hZJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2AE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630483358.3270.5358189984948488908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9994a385a09c6e170ca401f1876cd440623ffe49f7fb9585b61997c65dd887bb
Date: Sun, 21 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766304833
