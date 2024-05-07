Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CF378C6D
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715119343; cv=none; b=UNDKwIP0T1zy96Z8Rlk+iVATr+xWzBaWQNur6rjCi925dHrRvPTI/V8DnU17wL0Jm19qqHFBDU30WbIbGH7SpiAwAxww9jKRyqye9HF+Joa9cf2z+wibtC3NviUEWA/0rsDXf0G5UQFNylaFahgQVWbtk314KoFbp8whCGH75Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715119343; c=relaxed/simple;
	bh=vgiN6pTEzylC/kGH3TLeHL41xQUajl6WU5wH7oNZs2U=;
	h=To:Subject:From:Message-Id:Date; b=JZNri1RU3AldUB5YcfXkvmrPffRSqJdp86I9SD8zgIUO6sIxV0bAis2k2c/b8TqWye063cqAGJDSI6VI2017pnOH0vmezLv8N5mp+tVaDxJGSilqH44EVF015xtQb2WaTaOGePi28cG5xQIJ3kkNUVLzW3IBNwp83N+hHSvPDaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suJuoRdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suJuoRdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2779C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715119342;
	bh=vgiN6pTEzylC/kGH3TLeHL41xQUajl6WU5wH7oNZs2U=;
	h=To:Subject:From:Date:From;
	b=suJuoRdGm5355RHFC1TMWICiVbdz7hTCWAXg/UercXbc2NZCDcftwXSfjgbslz7BK
	 IZDaE7KEwIYyNho35jHn1pkaX6RVf+FFkBIA464dw+dWszlq/HkIOF0wtEJO6SKPQZ
	 kocjN6kQoawQ6X7piOQbCgfH7JhsiLiDENNxDxi8qP65Rok7OKYcMfVMIyKhT2+M1B
	 0UKqDtmWR7kFVok9WX0RAnPf2LrnsU+4tCgWpbluLA6cqvVKuQ+UNOY74Du7Hc+i8O
	 Vnz68sahYQueBOzHarFkUQhk/9H+r9zDYC5XuNLuISWqY5gdUijyd4J0XZ06jrnrny
	 O3JEby4dQOJUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C234CC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171511934276.23081.11897909815566547452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca27897f07baf5a1bd2d1b631af8ed317df7b813fd339166453c1cf16828b86
Date: Tue, 07 May 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715119342
