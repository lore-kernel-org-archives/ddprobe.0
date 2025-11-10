Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB8F8821
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762733994; cv=none; b=pqqt6r35XQyzx4qrs2O4m3aFG+4hpjS8WEyrk2HXXanPOz6PvCk+BFSMy3HGZ6OCRb/eXqfVu+40/llN701cg7Kppp6+sfq7sunvncWYD0MR7KphNsNPltMwCj7ZW/7gv/PNldm4uCbd2GL9iC+pacmXWXVWkN9EKrrYbW5tlVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762733994; c=relaxed/simple;
	bh=ZeKNfbXXcytkAm9NIgUPg+BSPMyTykYg4zXyo28CD0I=;
	h=To:Subject:From:Message-Id:Date; b=lgc6bAVY9dkVWFRsrgR7E+dfmZYAyNkk9s1YyMZFGh25yVTHUkjB8bBagvGXGw3JFQoTKYjU3739Aaiel+8t6usYg9JuePQ6bIdYofq+qXqrh6bvpPD54UGdhYJ+LuD5UXMMp949rB1FV7ea0Ety44tzZkdSWUN0HHAQo3dTPyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeBRdNfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeBRdNfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0C0C113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762733993;
	bh=ZeKNfbXXcytkAm9NIgUPg+BSPMyTykYg4zXyo28CD0I=;
	h=To:Subject:From:Date:From;
	b=SeBRdNfaWzx442HBJzUxyr+FyjIEx8CZSrrBxQMOVLaWmedmNs9PdBdcqlgjz6Wn9
	 CuEYowuZzVLRLZF5KNLxd4GmLKg3Ujnu6k1qUcERQq0Vu1RaL4MJsTnI6VA7EsIBvd
	 bo1lKNNJwlLVAKuVUwn2dyBk1fMkfe3fr1kYiiVAxv2X9RtfcS4drvQVXrLQpPVIA1
	 MHzISNqZKFJXZFU+e/Z+Magbu2bboVt9Q5j4qfUaA8thn5IWOl3vAy+TzSijJlZFe1
	 y3IeID77hIJaEj5ci9iB6DPfLD+TliniR/liCWeilV6iNkqGtz+SthKcqa0+d1IQQl
	 ZAmU/w4hzRBSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0ABCCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273399359.31896.10988575405272756666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be32a1773b69ce3d137cfe1d51f7abeb3921ee94fc3ef98e36a903e8f6d2386d
Date: Mon, 10 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762733993
