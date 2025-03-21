Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E517D07D
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742566194; cv=none; b=r2sycxkqLb+fb8A7++5HXjiIr6CYnZx9AePTk68oB6A2NkASLWTDlsFnh5/0DY9lg9vyyJkFV5Bms03CAsRSxjlWX71isZ6hgyhGqx6ggEMO5Xop6PUOJv+uDnspwmf2vTFfp64PUvz7e22Z5EztmhTIWWFjGQhdryE+/5ZkkJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742566194; c=relaxed/simple;
	bh=q9zpERyFMBxYo9HEBj7D8A4qY3PpsN2Nl6FlHo/6Nec=;
	h=To:Subject:From:Message-Id:Date; b=jPEVehnxTZiAh/jNd7kz9Bc9IcZbQjju2Ty4T/1gbQjps4u1kUIPxpluzlWSrEvozissoR574FIQhY/uKDUom4fJRthU9krpD5yoExU4edfF5aIViM0DmgPKxyrCkCgSH08yx1GCQRDYtYu2Jp/LiNX3Uhhhi/ZLcots3QFlz6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkU6Ol8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkU6Ol8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83CFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742566193;
	bh=q9zpERyFMBxYo9HEBj7D8A4qY3PpsN2Nl6FlHo/6Nec=;
	h=To:Subject:From:Date:From;
	b=tkU6Ol8QbBOYibhMxlx6/bMot5MBY567EYjJLSra6e4ZvNDFkRrmBOj+Irz93v/Ad
	 TflnZeiWdsBhSBoAXPxlG242N2uPN3niW+0n770nFnxRsZF0+7m+XuRcYbFU5zP4q+
	 iT2AtiT4kJLu23LKNcCWEMY8U5K0SKGn3EHnPZwmFAPx47rTSmnv6isrBrXhi/s6BG
	 p530fKVO+pp0hXpGTIWGkO0UnCyaCEj5ssUf1RWeyn5MaDeNdBiDdqfX5NM+61KPiz
	 rbbJeDsoFZTGBB/vlvfNtzF/t9raDXpRIfmJ43UT3hIisoEnShuh1ImAcW0z5F88pg
	 3DvihE0afvcbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97A6C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256619374.24520.17021491631165318092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92643c4f17c032eb0c39a045001a618b6ae0cad043bacf27676c7dc7d14c32a
Date: Fri, 21 Mar 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742566193
