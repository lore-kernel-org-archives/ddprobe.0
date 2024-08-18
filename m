Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350DD749A
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723961754; cv=none; b=QAvncq/o9Dg5ydVt2wYpR69JB8Guvmwk+ML9VNW0byyOmo8GEmIiAwK/yTkjKN4NiIc6DNzTenb5rwnke+G8QOY5xOqmfVK5/iu9q8T3V/O4h2rIgNdr0XUq6dz/vy4ucTNkkMe5v95C4GaMRY2ebA6C2tdtj5CTsx7ANvIsFe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723961754; c=relaxed/simple;
	bh=XDx0jIPqcPGc1F0avLgbd+wsO+UzSiX5btSDGFm1D3g=;
	h=To:Subject:From:Message-Id:Date; b=GTORrPCwn7Rr9zNhHImJV9HpR0RVLzakhchZTZrhJPuOU/3C8ABa+OG5xM0ExIGV1IOGJTMPmsNenbIaMlcJdMIh5X+udWVk7Nko2KlB8B0so2Po9RKqY0Z1MtYe6aKCY4HcFEPjusfZaMi+pzqOhXd+L4+v0Jjv/ec4/0JImKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+kleKi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+kleKi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E95C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723961753;
	bh=XDx0jIPqcPGc1F0avLgbd+wsO+UzSiX5btSDGFm1D3g=;
	h=To:Subject:From:Date:From;
	b=m+kleKi1n4vMtLWgZOrkqFUPQlcbOeKxGoPyBTPL6J3cLNxVXuIL7EeM+hg5Ybq5C
	 sm07samikCNe5b+THorXTlWcZg4Lnbk5kD0u78cuDoAsJ55EiaMIEnJt6Kfh2AX++D
	 SK7EdAaBhUN44Av41kzu9qCp5JkhGqy21fWb5AqUTeNIozma9uFObwIwkWS82IvnmR
	 L88OzUlVZeQ3Nn+FIB71AQo4ia+SrBvU2Aydjsdi50DsqNxgBmBjSSijEXB2G6kdbP
	 lRPEUWcq+CyjCqf9crR7radm5mTUDzlydcRuhIr90PWQDzQ1u4llje3g62kgLgfHFM
	 dmNIKFiBrVOXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D5EC52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172396175361.17333.5426762889062803843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e445b7f6ce607752636093a33a8cc64ffb56b14ce73dce5ff9619eac324b58f
Date: Sun, 18 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723961753
