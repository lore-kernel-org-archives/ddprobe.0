Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219974C10FF
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791327634; cv=none; b=sVQmYboO8hqsHTUCMhEZdY3/vaJqD6HQDPIGvOKiMUAlL56ppzOg/PyO3MdNNWbGhXhVfa0XUXJ6NHnTpC3riYQTQZoZj+q5Rl+ngbtm2G66IZsFwihPvPvUBfmrlJubyeS3h4xyTdwEbhRA7ZUuO8xHeYvAWPbIyj96oozaaks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791327634; c=relaxed/simple;
	bh=2AxDbsohswiHjnCcly7yT6ZPKbzVRdoLmy6fh0HC9+s=;
	h=To:Subject:From:Message-Id:Date; b=JWatcGqRMZjJ3S22/oT6PSipNcd5wF5BVC6zNUShzadvzzTADi7/yRDJt2k9IJfUB3lq+qj/C0u35HY4VW6dzQKMHFdqKfk6LFR5FEBpEZIJEKvMTrvDtT5xKlXvceHkjopjtHhlmV7TeckELzTfqjQfe7QJdhthjgEzIybO+XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHth1aZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHth1aZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29E9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791327633;
	bh=2AxDbsohswiHjnCcly7yT6ZPKbzVRdoLmy6fh0HC9+s=;
	h=To:Subject:From:Date:From;
	b=iHth1aZj90TP9QHN6bq3FAPUknvAL/gJ6VScUkrVtNLatZE8FmT8v4Z+INXCz7/KO
	 OWXJPS5jhpJ0a47q+DzesrvPGgTv1FksStaAiceJ86KZdjN1NoschjLvTCVvJRMDhG
	 oN1lDAxMSwbr5+jpk3qsVnnywn0XDtFkn5N5El7hKFb+8W3uRxva7aro2rK1vsvIgQ
	 6xolAwpJ/RkIsPmj5Xqz80Ou4cfhLDO/T4N2oBwIhtmC8cbyGTmUYx99WHhUYvmRkZ
	 yqGBva0RHa7MdTXxbhsiysc0xX+Uuh5dkreIlJM6wrwen43hXjfKhxGwKnP2Y3ltC6
	 xai3q41zuURlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD581CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132763368.18345.17539905352793431517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21286235a74b00ddd57008ed9fdaa4f200a31246ec6da7144ccfff1091e9a45a
Date: Tue, 06 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791327633
