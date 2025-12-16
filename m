Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADF719CD03
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765899834; cv=none; b=Cdkw61fEOQaRhk53JkDnWfvGCrTB7RJ3rKjN8GwCk/qfVgA7rycBDbJa4OtlqeUMuxOxQTEB/WIvIxxS77Ird9Gk9p0F7V1k1g4wfAH7CkDrw1tjkekUmYCsoYWW33jOkW2pV83aV6TQlV5+Fy4VWWXSOXsaHqjh5m8QUajcn1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765899834; c=relaxed/simple;
	bh=slTAKHqYP3ZNZhglTK11Vj5VM1JmRekQfv9ddyawSaU=;
	h=To:Subject:From:Message-Id:Date; b=YD8j/oVA4l6bFxmzITEvtm0q7yMqS1Q7YcyIbLqKZ3gu2qkwAueGT6ROdyW42gzrhmdPq6Mj69ULdY3ZT6tx+eDpXRnhoaEM8p1sLTzBeY88ZmyNAA9+n+41OiRqKQOfnLIgbbFiKbLja23nSWjplTnHGLbocPOY/oF5cVW8A1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKBnM6uM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKBnM6uM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E29AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765899833;
	bh=slTAKHqYP3ZNZhglTK11Vj5VM1JmRekQfv9ddyawSaU=;
	h=To:Subject:From:Date:From;
	b=RKBnM6uMiWOfHX2+UGJ2QceoYubWNfxTQgOBSF4GqRg6ru/wFjH/IItlcKZ0fM2W+
	 DdshQYzoTPU8onCEQPL1uGbqpCdLu1soLz1F/I8lyOt01eXLfas5NTL2kgpAvTrL3P
	 6mHo8aHa2k7VhRBBK1OUi+nBUfD/qYj8wuJ3DOJJNkcRhZdoeEAIF087vDmYbRegTd
	 s/aPKONW/7WAlgYAbQEcSmVRpC/OWbnQaezAVCwL4sfuQ1n/JEw5xEwE5IjJRm87lz
	 zdUt/wl2ilePHRz0lzFKHlKQhphiZDbYZx1BVioiVd020S3pXbWLFafetjD64wSmvO
	 Y0u3PJEC1pl4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDCD609B2
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589983358.29718.98028352276035881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e7aade3eb458edf5377b647053b0c2879bfbfbfd8b15ee89706117e12451eb
Date: Tue, 16 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765899833
