Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497AF1E8320
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781407594; cv=none; b=AN8slCH+a971xAlOZH+RQiovFLLFHHevuOvvDf81DCA1ArSMgAlBeDkn/sgXvzNpXgDTv6Gqsu/AbkwqtPqpoKF2wOkG7PcewhSsyA4rYs+QT7T/UM8dKGqTwWLOAApbhPzm5VgoR0sbc6oPrLzEj8VIzfLKJXX7nGr2CaYTjq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781407594; c=relaxed/simple;
	bh=x5CJvK4qPa2McDvXyY03V6mhvmh6oU/OaH3Rq5S3Lfc=;
	h=To:Subject:From:Message-Id:Date; b=Tm31rAvOLIdrVYtiq0poREtNOEbbS5HiEF+/5878ZTez3j+KQxBoIRM5eszkikQ4TfsVn1qtnwkkp1kKneTHkZ57xqp2vhTjToIO18aa6LgR/2hBIgERcSEeMxLkTbo9KuwL7ozTiGW2JX3EYX6uahAloqHuQPqmQ3cYGXzROvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ectHUvO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ectHUvO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF0CC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781407593;
	bh=x5CJvK4qPa2McDvXyY03V6mhvmh6oU/OaH3Rq5S3Lfc=;
	h=To:Subject:From:Date:From;
	b=ectHUvO9tOXKdMN20bCEfX4ijwvK2f+hk52ZVRfG9cgfWuJL+8bD7z2ywRIhqw4GL
	 fKkBGg9d57OB4GxA7EG6XYnlAG+HTAHh/CucNNzgFBu1giMXEoJ2W8C60sz7bxUO9P
	 OJ0BRvQq053IUv7Zu+1zauBaweslnYCfKbFxEedxojspnruzKdzLXplUBg6qCV52UV
	 iavasCitwRDIWnLUVm0QpALgx9Umg8b/NF2zC0hSHPgm648+5jiMbHiv5/wMj+qrz6
	 ym28BSw4hz7rsYvcZsAcAxYYrGeVhJSRgTAA/D0ExuhNTimK7ut8rOTWp0jcVyIla5
	 j10+imHntTzkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2871CD98CF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140759369.8432.11676279743711262270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63997e877d09bdd73587a92fbe7b3a94edb86246d7258362d3a65185e3e8bf9a
Date: Sun, 14 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781407593
