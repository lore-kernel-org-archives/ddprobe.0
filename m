Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C034642586E
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791111634; cv=none; b=PrHfRzES3/aVfbrbu0mcgrPpDEfE5FL9aLG7j779yz25JoKq0rLA/fQHXCow3Eg39rJmkydm14X+8Ax5qUJyPbW/OxW0jWU/H6HVOgMbfk8w3SAOBEdUkdkfyXddPxqDmMdqQe4VzTFClgVTZGbKWWYR2R3QAcCXjzhwXCPbXvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791111634; c=relaxed/simple;
	bh=Y43SeOn7mtugUQT+6AD+kKEaNdIFUKgmRD4Dqv/moZ4=;
	h=To:Subject:From:Message-Id:Date; b=fT8si+rJMuT68WSpXQtu3pAvYsq8TrTOvuAvQsDJNkWNZnZ1bHBj+R9YzaKIogd55zr8er3vG9JZPUKC+QngyKDZu6zYZsPLEcYgwRiiZZ+UN5LRLe2RMa/qUiPsPqIG5FBXFU/2MFqdBT/JXu+ljmL6yGFIuv09Iciu/qjd2aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijoxVJHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijoxVJHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDB2C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791111633;
	bh=Y43SeOn7mtugUQT+6AD+kKEaNdIFUKgmRD4Dqv/moZ4=;
	h=To:Subject:From:Date:From;
	b=ijoxVJHitwu6wYSAGgG++HvXVB9Eb72kzbrui3kbotuHNoUsc0/dVa1mTY0rDiFmB
	 XgvvNy06VNFo0eBVMkIJIq5PA6hcgWeH1OqIGqablUneLHrT0t2Wgv5Tz1oPpe+Ms5
	 xJR/r5fZGEk1myGEqKFui1VGx5GfrKhB1GtZTMCX4j71QCvKpZlxee8sJdGo8w3gx3
	 21Fhfw26N1vuOwWa0oe5HmSsOGgUukO0hIAAx/2M/Q98c7B6HUD8skYfa5Y7pyJHYD
	 cCtLITl+lIB0YiEBa7OU9ewzzKrDAgWNzrkSCtgPQA13p//wnwMN+gygLa5O7bLxHH
	 +fRJAxOqdGdtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C2CA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111163368.26635.3615234332885971607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31cf1c9efd00076cefced057a28a9fe031cf457cf8eebd2b6ee46a582241909a
Date: Sun, 04 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791111633
