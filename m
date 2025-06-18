Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A4127EFE2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750233594; cv=none; b=EQ9YNgiD6eKlILW73Y3tBsDCRtDSBNgBYNgfNbft3/AJZxokXLdMPzbe8jrvu1W0Pl1lQgyr0z7uHfPe2dM3piH16/zb7hw6EmaUZ4f6WQlYukvmfg9tn8KyhfB8jTZWOt8Vo7n0xoYEgd2TpGxG2DznBRx1ul4U+WMvwOqxAfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750233594; c=relaxed/simple;
	bh=SaQf6xTe8YawHSlfncc1gnskpb6mOZ7/ko5r6+D1DTs=;
	h=To:Subject:From:Message-Id:Date; b=hjs1e0lkYqsdowXa47RUhjwutIH7o8p6zMOH5DSBco9KP+IBh/Cok50LI5ppOf8aeHFNPR4Z/jqjELzLMPfZ/2QYlqkicX4c0zhYUnL47N4q4tcjXprVh3R3e0SXIlCvbVBCUJfam04ObYaQb0PT7JZeNaykoSlEMzSGXdHRlI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVQObnos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVQObnos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3478C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750233593;
	bh=SaQf6xTe8YawHSlfncc1gnskpb6mOZ7/ko5r6+D1DTs=;
	h=To:Subject:From:Date:From;
	b=DVQObnosciZNjU43QY3LXPikbd5kF2hRHEeXEEu4IS/fKwR87smQOeZ74CzNXk+Hq
	 ZoChqEZCndSzBV6aUa38AvkVlWyXiPlaJtHDGjMuy97kgkgnKF7BiMugkktV/GTgwk
	 YCPsBqlPCgrY/v19Udid4IW5/m93TN3+ho3E3IO8LE8OG3CSXgJzWQNM5mMTHEfWUo
	 ZNQY57D0qzYQXRViDcbxBxEpnlinqSwi9YnLUYEpCCQ4o0x4s2HIL01AjBzdfEq/zk
	 ZvhJcWqy/AWk2z4iJmOLfALC/LJQxcgg9gTXxwiexskAzV7kdJNNXiiX7OtxDEgD/c
	 sjXDbjTJOsAHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBAAC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023359357.32648.692947498301952435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8974520b566ddffa10df0a73487656b171c50b188ae0a80ea75772d6609a6c0
Date: Wed, 18 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750233593
