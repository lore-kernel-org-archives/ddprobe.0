Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECC329D295
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760467194; cv=none; b=leD4+UT4nmWLwqofa+aP1toOYCWEiXqoM0AdH5miFQRiihHiVTHZJf9TQUsFYzCfOBnbkVntE63PHZ8dzQDa+a8zZgkHM0ay/JElyJqDmGeUCzuFwJRCkSGwQkEwkSk1OG+RBpTtqD8HJEuZsVpNDXmqDmwyWx2KDD065WWbKDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760467194; c=relaxed/simple;
	bh=pQGW7A4lXGyQnZ+H5KUugyF9DqS6I4HEZds2TK4We6Q=;
	h=To:Subject:From:Message-Id:Date; b=FWWyWdem2RqV9XauR9Q6PTmX7puSDzXyUolLvN2Q8HfplSiVPxtAWOeGIJSFBsb2Q9JM+qjPeRruAp39/onlcpAPF00C0fDdUBrOfRhOo+RUu8mEbS/i8hdDZTcAqrMSQuxs9PFAGwSBMxxAbTLdikKzq8ndgtK5I9UM0/n58sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ra/UDunE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ra/UDunE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5012C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760467193;
	bh=pQGW7A4lXGyQnZ+H5KUugyF9DqS6I4HEZds2TK4We6Q=;
	h=To:Subject:From:Date:From;
	b=ra/UDunE8MlTAnl4kn/tLUfqv9FebHwoLSGLkNUgGPiPutpqoMHBhM8RVHs32WRM2
	 4NvsWtZ0U6QPlyA7WAtrRa/5s4r4niNotmW9tCSafycm4EQexrptWYPDECkfdFN2as
	 3p1E+7UQfjdNrexmJJ+Hax+gzIA9+tbMfoQqV+ntJ+ppDnkU7ndGv2TKppZNHdu2LF
	 2ccXxxIYEWDhKPG2DzhR75r7A8ywBFjZku+YBEC497ur3a5qxAmax4TiX/pPo3+c4w
	 6/AfgKusGdDeYjJY4mbmUwaIo9yQSUW0SlwAxSOVod7viiE1karC5e/o78IvpXo7Xe
	 dIRcuDzSOqolA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9216ECCD190
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046719358.507.9423744440512570420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a84764a886c809cc9b2ef8d98d4f3657e1222d72354a6546871ae1d5fd82301
Date: Tue, 14 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760467193
