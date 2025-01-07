Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC851DF25C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736258154; cv=none; b=VQ9ciJ+InQ1i92yVaMse/X1pH0RLS039ibxYUkfzy1ocA5kFio5zF9LBwh3No5ocuCTu99L3Y6XHxojQSEISXrXwfonspGTroiSzvHg226gvdbL6Uhf3uVu9ZxNyPAjf7dDkiMfJ16Yb5GMBMTsMyYcWzAXjrc8rJJxVokxci4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736258154; c=relaxed/simple;
	bh=7C3kMaCJLbZgHPWfjjeyYhcsxEzwDh06Ne/+TaLDA8Q=;
	h=To:Subject:From:Message-Id:Date; b=u8GVsYsYxwPdVxta/sZ7eZSzqRtv4zi0CH9Wa02JoiFPdkW2k0ufTnVV/3RcL3zIj5Us2hBFz+dEx2uoDUyOkvh6AKBvow77uYH1L1ds5njOOgkifFlw4sptBkvp/i8MVpXwPSUReix/YJyqcvUFxvZYJ6V8S1X5DjR9iv7oRYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vpi7UQsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vpi7UQsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDA2C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736258153;
	bh=7C3kMaCJLbZgHPWfjjeyYhcsxEzwDh06Ne/+TaLDA8Q=;
	h=To:Subject:From:Date:From;
	b=Vpi7UQsXEiqWHBLlLt7qUHZK+RlnH8yBWRkM1uqX29uUNogsf1FOOsySCzdoj4B1W
	 WMojvJzgKZZW9LyI/pFSmecrXz5Qu/+ne/idvag0oYOgIjAoDM+zOuR6UjiTlysF79
	 SFO6h+c7W8jN2kkLy58o06q/iK+HUjbvrcTfSupI1rt90tifnDSGsRGJz04qLjjZfh
	 a0wIU9oIYuambGdI16tPzIlDDptRasacBNWKHC+S/Ka0HwFvhWjk2MkoCH7Q5dtiPR
	 gHi3vQpSNH3JFNbD9vr9dQ9841LQnYbQftwYGpopP25SAq/x5EIrfv0pCgOidsoNBw
	 BXsrKSDEZv/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD0AE77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625815358.24999.11799685880481603589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 008610e3f134592987c41819857c398ce699f101e519bd24c9e9ef9908e01d5f
Date: Tue, 07 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736258153
