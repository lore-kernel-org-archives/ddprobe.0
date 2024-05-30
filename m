Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC885028B
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717094663; cv=none; b=YuyAvZFEGOYN+3FJyyfJ6dyAlD9DtaOIlKMqJE0a5BBzkRb/LG0FpjmPQhVjrRpROAbura9/sep5tpYKKKhCCHVLjDv6fjDnq1zT4cKWSiqAvXrGCrRhKriDyGRsau2RFWNOzH5bZhYwkWrkgT+C12jG9ekKpniQAvilcFlVmas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717094663; c=relaxed/simple;
	bh=TMqpaVgg63l2Mh60HwL25jlqKh0kIm+oWJB/oU81abE=;
	h=To:Subject:From:Message-Id:Date; b=nDVxvDxjyDfR3MhAlGDBqcwUdZq6kGNDmyVlYhoooy6N2ysa7f6kSr5dt2oj9iQRg2ZXbMDu6bmUb0/XkyA/6nFtU000db23c+68iPq6ShSgqpfLoAvrurlQ9QjsmDIIEhd5ioP17Wpi37KF9AG2+tLCemkRtODFCtBR/PJNvhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQEkaRVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQEkaRVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF511C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717094662;
	bh=TMqpaVgg63l2Mh60HwL25jlqKh0kIm+oWJB/oU81abE=;
	h=To:Subject:From:Date:From;
	b=UQEkaRVi1cx91+qsvfcD9Ds3abCX8JIqlTC4Ma3kl59dfO2lMk1ZCiPxcfa6D8cDK
	 06DSQwEoVnbs1d0UXuyKvs10U7xdlcpljWM6ZllChCEdO6cNv4Wn3KN2oDy8VXz9i+
	 WzxVuf17fXeul1bSr9xsVSrwBOFgit18e9ckDKGHtIKWFBYAeJg0nntBEk/BNogSjH
	 3CVfNAC9V2J0/d0rmL7/kj0HQCB9cgNm7dMlLgpX1YmnedV82rAivXK+sYBeEptMbY
	 hYfIdLK10P0Sv8fn+kwcBQ3Fqnvnm3oOYTOomNLrkY9nJx9cU/kkmq38Ex/0cl5ZnG
	 InAWlvR5gQyfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBA0C25B7E
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709466276.20381.17338015007801635962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4413390e882a602b4c0dc832c81d5ac22fd2090fc34483bd390035948c75453c
Date: Thu, 30 May 2024 18:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717094662
