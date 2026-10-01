Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4A1314B73
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790818834; cv=none; b=gtTEQAc07VyO+oFPyejJqDo3tzGdeAnAMuqznzxW9b1wSMwrvIFZLqmpkR6oPpwgzZYmwp9ZQM9UEbwJ3UU1N/0mxFSAF1KDMWwdeWjlihdKP77zwVidzxdjOGIE4v6sdBr88VUVDYFgWKsijUWdNkAvLoY4aHc33u8ATp0qmV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790818834; c=relaxed/simple;
	bh=ZPmb8kZ9FimrmubLBDKkgvEfvogqRWJzaKWHGKe8O1Q=;
	h=To:Subject:From:Message-Id:Date; b=Hep8eCLi9QeNEtpS5B17swvGJ+z5/tV4XwK79OQTmgn87mFEp4FLUrSAbVgbBp4IYY5sEZDZBodRKjLdnw8BnqzVbdVqxtgpSZr3MRPXALVwL9Xgd0u+TcqADTzpXkDq5MgIxOKDLKSfaC8Na7NzGbxboCMXRNymh2FVg10fH1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thYx3zTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thYx3zTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD91AC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790818833;
	bh=ZPmb8kZ9FimrmubLBDKkgvEfvogqRWJzaKWHGKe8O1Q=;
	h=To:Subject:From:Date:From;
	b=thYx3zTarvwIIWIaJeoRN2wnyxlKn0hu+qcqj5IvMEnSn1IG5xHn6qay0VCz8pqH7
	 Pa+YnSjjOipirILpAIywxl5iOmZLzOGsPp9dsGlzw0A2g4stBDvaz875ULnwESeQ0K
	 jXv2MaKI8w9Vk/HtgSjXzeMuf3RabrSmm7O51Ki0uw0E8z/o0Jv59FWSrYz5X+KDI7
	 zjxhyyPXt4av1xtl1JXH7eE+L0vkmSZUjhkfe+6FIsPdK1wNPOSRQgygZemldLjcH+
	 MKq31NMduCeQHFt74FcwP688GLUhkLKO459dMKUBdOQ8u7IF3NtMOU/v8H86xf5Ea7
	 ZZ7I0VmmS5nPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B6BCA5FC5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081883369.25615.14491099902337851753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 429b49f31ef1db404238b56c15d7fe2609e2a80c2d26715e642124705637930a
Date: Thu, 01 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790818833
