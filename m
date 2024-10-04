Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6CE367
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728002154; cv=none; b=cT7E0TBNMPvztaMUx8PQmlrSEzAUyfkkx9949brF/XxSOoyzob61sgyNJo9lLqF+eFpGp/7fEAkmNCBKsVRPbDrJvAsCYmLEQrQp01Ac9KMbdFYo9GMJ5JJ01N680c0+jmqT9ejyOc5KLg/h31FFibxWKd8ZPh4+Bytt77OQLVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728002154; c=relaxed/simple;
	bh=BeReLD17n1aFTzxYIeW1hPtju/YOEKzgQfDsJ1evj1U=;
	h=To:Subject:From:Message-Id:Date; b=XZvRVfp9phKTukUiqYqOSF0F8jocXN43cZd6KKuPJvE5RhiXYtja4rG1NhKuK6q+hG4QCM1FotZW1AsTkUoUjT0OXAbngLWVYSosLAGPlGbNufHKK7Mn7CeB52Ijuyayd3qHfB0R9rkdfZsCto7eFEq6nmUVNjwW+5KFGNrxXxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUVYrzZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUVYrzZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD0CC4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728002153;
	bh=BeReLD17n1aFTzxYIeW1hPtju/YOEKzgQfDsJ1evj1U=;
	h=To:Subject:From:Date:From;
	b=sUVYrzZJF8sHeJRUvV1iNvKhEtgNgh19hQ9yPosQYvo72c3Z/OI9BrP5cLseflE/2
	 MTGL/cHFJKbXpHMSxXtuMQNBVQUm3+c/XB36IhLYXNxhgZAVOrK9TLRU6OcFJUm+RS
	 9ce06aonjeVdewvKgMFjm0QUkOJbFGtkCFUTo6/61A7LUkHncea7mXm/d+ENZ9YkXL
	 u+XQhkiLl3uHdtfJNEKX4VGoju7MkLxOSM744uXasPqgg+/LMkEo78yfnXDQewgT8y
	 30LgZO3oFt3XFaruaZU7glaZSe0WODEY/BDmGXoFt01nTWhXpy19J8YsUl1fAiX1/W
	 Zxeah0I0IIE0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9BECF34D7
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800215359.26763.14197946176573235467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c633d0b46f48d1022a5458df55c7ddc661c205390e791fcc3d3b07d69960df7
Date: Fri, 04 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728002153
