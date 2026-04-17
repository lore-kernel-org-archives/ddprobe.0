Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301E91CFBA
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776457054; cv=none; b=PUExV2dQW4vNFw3/31ls1Av/wubYoF/2SwveQJTI1BlotBteJPE4c9YhpLY23A7Q1hchgzmLeLBh+bONhJEhbxQlkiHU2u62reJKmVvgggCNCbaaYoSmyz9lhYCn0WqinWZwPFgGo7cq9sGD4fFJUazVwahBYL7oMs14a2gB/74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776457054; c=relaxed/simple;
	bh=UIJ6p2kvJ5s/J5MDfMqXhOpLSef00gGAjLAlg1+nsS8=;
	h=To:Subject:From:Message-Id:Date; b=RSxWK7kdgZcNO93trSUdVUNpZRYs2E7gOshgTMCD6bsOzRJb9HwcJOx8p0J63ybF9LSKzx3c+Fy5Z/rkxEK/ZsluGPI33chyQsEBtrTweHbCfxcYmhTqCt/ObnVioJLjPq8MNydEHJrOkgeO5piVHaBt950QL4gZ/UjIV4wQz3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzBN+Om/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzBN+Om/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F38C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776457053;
	bh=UIJ6p2kvJ5s/J5MDfMqXhOpLSef00gGAjLAlg1+nsS8=;
	h=To:Subject:From:Date:From;
	b=kzBN+Om/SusB4qwCWjjyWQTcZOLarrA1zYW+b5ULg3hGsCPf10JXr7g/A/SxZ3c/a
	 cJAn7Qlx0Ob9Q+f3S3Rb5EkCi/ZK5WO/muQf8UST9BjKq23EO+0og93y3JA0CTTmUw
	 mmysZPu14xY4ze22vza6ntafNnhFFLYns52LqNyowPl3neUTkJ6wdP37CmlRCC0Sxn
	 m53WrC9d8hLwU75REMs1Owzw3MfxSmN305k4z427YsE5OZvFyD4yuGKt8lLTf1MYN+
	 r3YBUBUIzHkQvkdwl7lYK1jzw5aejZqr1OWGif01npVPSqFlGqkmLVIn32FzlD7Gqj
	 ZIQQJiZ0d5KlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC56F99C61
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645705368.14809.5661741012210008337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd5ccedae8b00cac76ced835ace9bc3d7d3ce6dbe60a6f848e87bc504a568d4
Date: Fri, 17 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776457053
