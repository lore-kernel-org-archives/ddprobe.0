Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E19E22ACEB
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758618594; cv=none; b=Up4iynWPCq8zVwrv5xfBt8wOdi0Xn797/ZstDfWmmvo/3uqKLcfv8nuEzNxQTVMEQ+yeJGEPhyZecmySTddMI51EuIT5NZ7Qr7noQZVVnHZZd3Mue4wgE6DUyo7sjvnZfGGyLoeoWNjD9oHftfTWd0Z+HX9QlOO5ocsNPB3ZBgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758618594; c=relaxed/simple;
	bh=WY7j0QXIHjoC8l2fdkLSAtmyWypkrHL3Dtv8cjVEzko=;
	h=To:Subject:From:Message-Id:Date; b=LbmKwm24fXSopBQZkAedguv5gbzSsp32TTzP2UKDRFc7qcgytSPYHd8UglHSPjEvEdDDJd/UYiMtlkG2RJoKaGUOgDPWqwMTUH9GDB3Y9nGGLSQPU78KFsIhK2t8Czy5yU96AVL0oVwOwIMkSUUR4LOO3R/W+KxIEY5OF9iMdY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKOPVQj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKOPVQj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3137C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758618593;
	bh=WY7j0QXIHjoC8l2fdkLSAtmyWypkrHL3Dtv8cjVEzko=;
	h=To:Subject:From:Date:From;
	b=EKOPVQj4ohVgFHnwSE+3QGRy2IZkzhdZJ0+G7oh76rXZqHF6JfPHjGbep2Sy9giSR
	 YzppKj70ZBsEml9fHIEfdWqm14Bf8JyWp1vyI9u5nX3DdjwFjplABEtvj8zaLEiUm3
	 fsgbM65fZ0zdbC+3rKChcLaHKXZ3+7EgwbQ8GczdrfQgq0WfIwLVWTWXE7X5dypYty
	 oA7xuXkeHC02Ko2T2S7vE2yVZXnjh2j70R4d1Xs32P/wsAmo9V7Q7kkJ9mfBlBLtOB
	 YKos2xZ9DrCtBU1d2nVMf6G9iDvS2/U1lE3sGpmm+Pj0Ps+gYsbvZsx49T58CKARcf
	 iPYCVBU9AQ/+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91563CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861859358.7064.1439499857628091671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce9bfa1c178b441fb3ad5dd9e29de9bce0c1ae07560df3faf86e6ea28e6bebd
Date: Tue, 23 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758618593
