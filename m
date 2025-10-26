Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB122F6908
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761503395; cv=none; b=uzh36VkWgO1M1INE+TNnMX8E/AjXFBbcyFlVVNT58TXiPZpmmoH+bK+dMj+qxCxzJGJoFQKE8+Cc4YlqOZjJthhExnEudbYe6YfS9Hdz73HJyFsQ0e6TXeAxcGApnHbxIfK6aFZKHM06L4sPoySMhQKMEimJw/ITXnBwigzW2Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761503395; c=relaxed/simple;
	bh=ZmPACYmiU+SFKR0bsQp/um8lxTo9yUUvSE4P3NNo1bc=;
	h=To:Subject:From:Message-Id:Date; b=Y8whxLVXoHm1WnkNBqWDLQflwS2r95f33fsshetSdEcr+qYtZzJNDkYjdvZIj55egSeofINd9kQQVyIFDSK/ZkhVYMRp0LxYVh7hgUgU/6AVKBT8Qs0QJD7yPg+6BCQaWjBaYdjNlbIp5T4U8WT7yJgKstcUo3NDEqpm6VkiLLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtUJRqHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtUJRqHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AFBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761503393;
	bh=ZmPACYmiU+SFKR0bsQp/um8lxTo9yUUvSE4P3NNo1bc=;
	h=To:Subject:From:Date:From;
	b=UtUJRqHfFZWdjTf2J84n5ivMU/XVtxaZghIxu4tGf3uqa+JhJmBD1q/hTb3ZCwSU/
	 OmrtUXlFNFxxSbbhEMUdnU/qu+g7T5iihpHP50Z8N3RdRblLVYTVcnXB8jSNlnzPWO
	 jjvTLWrZi/a4IP6+Ekmxg7z/hyJX2A0iDcf/QP4fspldYXGpt5Zf/WhQ/cnmRucC81
	 20pQTfcBtvXnSt/og84LZajAB4uj0aQOdtH9d3I8ZAwnfERB4Qu4CFmeTqUvYvjEls
	 G6TyNJZ1blCwAxEfZRp3PGOl1pCU+YIyZ0pJOpPchV5ihS85nr0sBoKJlXaY9xAbrT
	 8IdoJ2C7Ixfag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92011CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150339357.24901.2663614089559917332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86dfd1a2b5148e8dc31b23569ddc53d871687fadcf9b2e984550cb0cb2b3e726
Date: Sun, 26 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761503393
