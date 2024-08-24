Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485801EA73
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724483754; cv=none; b=hS2fzsGKyOlD5mGd7nzGxKWjsSC7M7AeUUYm3Xs24oU1MKB2v+ydeuZ8LolvPBFvrgeyIS3myg8/O4gcU8s/c8TGhY3ctPkB/uAo8TrjWj02NG/rdwVofKl7hNkdzUp57F4d8tMqbv9cv/ByjtcxvFXhH68WfLveBq9giDKRUu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724483754; c=relaxed/simple;
	bh=QI/OCI0c8mYyrdFiGv5ORq9qCec1F1cerOjgaBaY9uc=;
	h=To:Subject:From:Message-Id:Date; b=p+PtvHgWTDaUgSpphKkCmQHp1Yk8Nr+WhZPQebm4MYq+inwEOTzYvQHGAZGgL6A8XuaR+ruyQ/k4N3YgsSWyk8OX2UFf6EQTTX4L01PfTA0LL/R+fvLMDK5gbQCKTcbY2PwMQSs1sUF3x6l97iA5nJ/ALdXMSmV/LWYY1ApAGV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bjv6yH2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bjv6yH2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1548C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724483753;
	bh=QI/OCI0c8mYyrdFiGv5ORq9qCec1F1cerOjgaBaY9uc=;
	h=To:Subject:From:Date:From;
	b=Bjv6yH2LkKbMHEIrVmJ6aZkYSuYBik6BMVB2psUT1QFz40VaTBnUUs5XUUyLTyOcN
	 ziEhCVx+5giRUe7OQy3IMIPDcdBqIW8ERA9Q9twy7TpZUyN4wfEQps5McEJOrXHaKS
	 DBh/B/W1aVMra0xYYWiN4ZRgfDbQQ8BVQrwz12qs3d6b8YlB2m89VcXryx6GU1Ckvu
	 ZpFViwKBiXwfH16UHZi4DTjPHCUV5ZnmfGKI1/N5kKuR8M1zQj2lqf36KhIfNuo707
	 3NBdZcqOvsdV5glfGSWO1ys67hXoTx3mpWzn8PJgGhN+vrjEd3r8CNP4Rl9IGrFN1h
	 WODJf9gom5s7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9739DC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172448375361.22791.7803244903307227754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336e02d0236342ec505c5375d26defacc15a47799578f35d6fe8b1ce0e8449b5
Date: Sat, 24 Aug 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724483753
