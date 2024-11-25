Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168E6195FE3
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732527354; cv=none; b=Q+d27CDVKOS3lITKunJoFux8EGn0s6Rd/D9BegT7cn9hZN3ifl2H5+boUqaP7D7qCTvti88ANsVyYuG7F6fRZFZf9P0L3r7Iqtn9yCBZQWq4r5p2xk5S+LJn6FQBf+P8KIoVI3HBXKaxwLzj6nKieKAtl/QVKbmZzZYuc1EDp48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732527354; c=relaxed/simple;
	bh=eYQWOJwXFbcvQ8lxe4aDj7r2qzNeOQpqQmHmyPp8S38=;
	h=To:Subject:From:Message-Id:Date; b=rE75GOv5E6P9zvIfIJWHmRAlZIdn78gvTIwm1gx6h8n8jXp0yZ+8KGO9Ed3YYLsaUbWBz7noZTULFobfV6IAg8VchFgMKNpMxq7Q1tw/ribrDUfZiL1pi0ofMeyobCIGOWNJW2fpA/C+OyeAZPPuNeOC5xwUekdH3gPApvtfNFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Czvd/FrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Czvd/FrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8531C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732527353;
	bh=eYQWOJwXFbcvQ8lxe4aDj7r2qzNeOQpqQmHmyPp8S38=;
	h=To:Subject:From:Date:From;
	b=Czvd/FrLntvS5lqh5jEEHL/+lxkdwrYU61/jovZh6e/bEYNQDebq5BuAxPhrXJWTa
	 G0cfzy/RzhhkN05834XPM0JBGf7k2jbLokwGCRRCwIxjRkw7YOYUGo9h6LO7DzaNV7
	 0ldtvoYvvdqnEV9PTKSoU71HtgzBNf0um+gC4RejG7HBRdW5w0ki9/D6GrC2d5fkVx
	 SmTcj2l9KHgklv4ZEw0q+PA4CzvuxJih5wprhE063aVpuz9EtNux8ccebJHJq5URB7
	 n7c6LpO13b3H4tMGR0O66hGxgm+JAAbJwizohpHlEcfDUsPLhTSr46h87MoAyjUuNb
	 0FgxgZ/V18D2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9473DD3B7F5
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173252735359.20016.7248945932502857385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371de5a420f095b0426ba5f34cb5a50116a5561969e58af8bb91ea11534c9694
Date: Mon, 25 Nov 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732527353
