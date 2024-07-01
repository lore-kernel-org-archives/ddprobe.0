Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5687D10A09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719809663; cv=none; b=A+MK9DhppRrSbI/IkeIBJQsqnOz60AWY3LJVgH2oUKoMdzkfrFE6YBRgaida8hJvqYogtU2BuZVuMoFTUJG7RoEYd691a1UvBSWaFiP+4u59xdsASWAhJCOZvolhlsDDTkeT2gV00tABHij4TlXEPhluvSMoqBHMMEenzWNHxlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719809663; c=relaxed/simple;
	bh=u7qGia6wwR2MDfUfZEdFkE7izXsfrtDr35foyoVbU1U=;
	h=To:Subject:From:Message-Id:Date; b=JVc+VmjW77LU+n33z/1A5Ha3mMuMiqlzaqfJQBVaFgLIjgo+6Ira5LGpq1SVn5FWxl8NtU78T2rSzZ0WgUIgXFQVSzBpZCDXcuZcbY3uDi0Z4fRuXs8AbGrjXILuGjJdlCRbJXt0lW/qUV/ezUODY2sXxSKWdcBp4G5J60oWy4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcg5xdgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcg5xdgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E35C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719809662;
	bh=u7qGia6wwR2MDfUfZEdFkE7izXsfrtDr35foyoVbU1U=;
	h=To:Subject:From:Date:From;
	b=dcg5xdgvx+jshzWbwNyfF6sYnrMMBTzpoLzc/wpwFStbdJJmRcWMvAEmDiVTg9y7U
	 X6/A9XgO9uLqdlg5Ou5ZBs1/MwBOp3eQD7A3efRGADiAuhukJMK2xBMuJP1lWlfMJm
	 tvgs9eM2dXW208RLXCNyjskuMf38UISkkmcPZ04vR+K/BCcIP/TdIRIejoVPGhtmJm
	 Oh514fjRrE2ANKvZykTfw7a3Qy+DVHSx95loQzOWMjIACihfHPN4suh08l+D9Pu7mm
	 xfCIPmxaubKAZdsBo6sgfB1Alhwq51iyu6u3ScA8zrfTXXIuyMxpbVy34dIH22ifl1
	 sgqxCr++SGwKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCBA8C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980966278.11645.4139881769826662294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6516f9ecc00edb1af2201bd8950113464b367b118148e41a8ab3111797bf00a0
Date: Mon, 01 Jul 2024 04:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719809662
