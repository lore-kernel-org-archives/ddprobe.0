Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB96C12BF0E
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706717897; cv=none; b=cHaO+eiJwG7JparejxzON0gunZt/VsjlJSya4TvVxsqecMjb+EUiqqmmXP8zGPL16KyFV1twcT1FzaOG/hOUcQ26ow6ZJn5rliSUdHPfIRjgvHpBiwpzyldKABAeCwr6Qy/L2kJ8vVxoEq16MPbx0MpZ9Yx1yh705K95JrrNJAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706717897; c=relaxed/simple;
	bh=tpBq9nraCnhrY6Vk0OByTrbCa71IWdQFP/UNwgO1NXw=;
	h=To:Subject:From:Message-Id:Date; b=Ke7kuxCEuuRoKJIVhwk6VuJY79H6iOhMVM6wv907OXr7Tdq0Uxm8kxBewChxSjzqnvI6CJoz1sVD1E0InaenTCBAZe9uY6kYWo6TdwScnQF1fIZOnwljaf9NM0NnU40OT8f/R1Z3b2otkkfTlk3CxgfB9L10ARzwtXWe+plahCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sa3YVd9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sa3YVd9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7774CC433F1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706717896;
	bh=tpBq9nraCnhrY6Vk0OByTrbCa71IWdQFP/UNwgO1NXw=;
	h=To:Subject:From:Date:From;
	b=sa3YVd9Dpnirg1nVJQOR1QfKJMyMinGsOLNhmAcxdity+VCz+r+oyI+pEO86KsnS6
	 MktC0hj4i8Rv+r96qCFrxAaUjZDVig4XJUNzmWE8CQW7eEiTNap6uMSm19rufeB1el
	 kHLqw2/ejt4s0GWFaeroEYC7dukxBezdEj3K6GxIaUsI9obnmBjXzC+L7lXMP1XQjv
	 0ZuxZIQI2nOk9TmGhOua6oALOgeW22rlZPJbwitlzBOfj11xkmAd7UoiCrKVvwwFfL
	 b+cDC+Lx/HoZxYxVvem41XmPgf9yZDL8WLakM6zlHSPu1w+abQhZf++F5bvHIgO+Tl
	 xcklGdNpije8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FCA6C47DB3
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170671789636.846.5503593507348468369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20dc4e10757a996094eb6d23acb3a6348b812ab0124f73b3a217bc1aa33a4c4
Date: Wed, 31 Jan 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706717896
