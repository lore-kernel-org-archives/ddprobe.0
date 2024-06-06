Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580DF13D89F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717714043; cv=none; b=oFVYYOJDEtpFOltDlwBMHhC/nrajJc34Z8W2P7dISPj8vorl2PpW7/WMJMmKmKhOkh1CSyJ6zxRKIaMGpXwsLp6wPdXxbCG7vdibPapN9YwHlwzEg0vFiJ9QneNRaM/bEVPrf8Ack5UPUXuavwlO/4OqEf+rhSprlASECRv5P/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717714043; c=relaxed/simple;
	bh=s0RKyQT0DCckiqaGnEzXTnineUQR76XrtfBq1UqfRMI=;
	h=To:Subject:From:Message-Id:Date; b=Oi9NpJj2T1MKDhi9I+Yihj7mTFfkXukQTkrEOyD5xWH9HZXKKe9ml4Ypv1A2CccFwhHnkWQkjrQLY68avgC3/+ZzCdQs0OYozKH46Ga22SqH19A9VSaabknOPaVqQ5v3aWLw7fqbaxxqdljCXPLMCs47zNRKYAUGoTGftKCDbjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqujI8NO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqujI8NO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE278C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717714042;
	bh=s0RKyQT0DCckiqaGnEzXTnineUQR76XrtfBq1UqfRMI=;
	h=To:Subject:From:Date:From;
	b=FqujI8NOMwrfzt/IX3R76eXdP1Y7blml9kR/Dy+aQDQTrI3D40/Ma1PrmJGp23+xA
	 lZEJryvBnPncyxu1UsnxDsOZQ0OWsEnGk9XLHnkl6YHEtawt/42K2/lij+P3B/EYgF
	 mboGYk8AUeTqnv+sJVDBh83jVFDjyIkIcBtd4OhBSiNmVGzB3VSLhZEnDBu/zEl7Kz
	 /H31ZHLFaf9NkJCtmDsx2jqeArjdbWFsaOcox9BZgRx43/VohGNpIBYzelkc7GURzW
	 S1esfqABo74z7VtHhT+vtcuQgu0kLk4v0QVn8jPaiXs/oSoyc2JdachBqbr4BW6RPq
	 TcjvV096T/j2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2ABAC27C55
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771404278.29556.10836825445628077337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19ac56c4e6f78631d30736e6e0e7c4d30d0e0c5480644abaf8e647ca3f72e52
Date: Thu, 06 Jun 2024 22:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717714042
