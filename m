Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC58136352
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736403954; cv=none; b=skERUYb/xwznTsQeuUAFWBrYsVfGxSNHsgA0tC84b9UHNRVu2rAJjItd59NGHl3ui37+06S/YfWcn2Dv784wDkDWCQXCeuHhL5qvQs5LVtX7pmajVIW2m2JzQdCRZf3xn1plFaG+Gb8zBdXsxRnkmkIKge+JOIuO6jBgnEsUSCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736403954; c=relaxed/simple;
	bh=izN+BvETJiVq5y2z7E2jRkqqROZBcLJKu6oGe2cfUAo=;
	h=To:Subject:From:Message-Id:Date; b=Gj2ZZvwNZFrgh1IrnR0KDHKf+OD/UfHspQ9CrxTNA2HMdFtSLv7AeH5Sdy4HsgDtz0Ki3YCbXLWFhOkERTzet5SprfDw/IAvhr8UhCyZ5dvLhGKKy7WrsdHfiOveS02EdrWwC/8g2NERz9Jpg12Z6S8bY5p0vrzTK1EhPfrwMj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr8ISusJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr8ISusJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD44C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736403953;
	bh=izN+BvETJiVq5y2z7E2jRkqqROZBcLJKu6oGe2cfUAo=;
	h=To:Subject:From:Date:From;
	b=pr8ISusJe7LJPOyKo3qVA8XatKuZYAJzBwZX3e4o3JWKmxfxzX0XI8USWg2cs1lLc
	 AvMKaNki6l/xjjyRxsCUWVD9JS9EBA/rtqtriq6swC6VyxS8mUaAzMOCiJ116+3utK
	 iIUdZh8HrR5rk5lcyoLVbjniUqil0lxYZSOD72eYKH+A241SQA18k1v6M/89eNoM/k
	 BrRV0UZXz9ZCjdSJP6ZRqbW9IhEww34ER7WJYExCzGzmMGM0Xy6BCgTd9O0KJ0HnCF
	 JYWyRED9rcadXSbnKU+9V6I1xraJBB3bef9fp0jm3cpGettOLu9YJbLkvJgRv920zJ
	 GGsEmRDbocGwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F66E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640395361.26031.8776547722026645623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b71f164b4d997392cba7645f6b7cc9b5aa6a611ed8f603477e5f5ac7a98e24
Date: Thu, 09 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736403953
