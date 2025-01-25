Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4961A19E997
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737790554; cv=none; b=fw7hYT+7X/9iizvvoDJfqq6hqCOKHR70es40cpNrEwq1B6h1dtuez2wXhaqf48VCuQSlxRX8KFPsj+ekXMWu4XPNwZjDIZLZqnBdBhFIIqjI1BZne91VQ+7uQeks/I4rTYXPFP9o/FjbmpoAzAz+utiyh/qzMS7Ke1AkyFU7pL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737790554; c=relaxed/simple;
	bh=Ui9ehCu19Bid4VjbIzKwiI8EHYRTk2NwsHggo2IJKGA=;
	h=To:Subject:From:Message-Id:Date; b=GzJcLeukuJtt5I+cwxI76ignP9VX4JjEyQq9AqmL6e9DqjCpQ0kpzV8IlGy8JfYMt/q307gthXHvyuvkhZCGDEi2Fv5F990uKzRx1IfYYHlHjDYfUvzi9QzYT9yTqCcyT3GTURKeMb5/Ob2871LCx5JKPor5fj4hjKtCQIfIjkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcKe5V8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcKe5V8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4ACC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737790553;
	bh=Ui9ehCu19Bid4VjbIzKwiI8EHYRTk2NwsHggo2IJKGA=;
	h=To:Subject:From:Date:From;
	b=LcKe5V8pRMNUjQ3YM+VJokO/ansnpq737OceaBF6WW51wn/QxknzToxb+9VsfbfCf
	 SKKMRgDDAvo/2EddZ5EO6/pl/x7fVudnlQErVBsJ+MHSVWUEji3zNWWwATspu2QArf
	 3tM9pL/6qNDq++fRVO7gnncHAypPbt5u374WAL0g87KcQDY53/0GM3qwRSF38Wig8f
	 BX/uaaQs33bYtNA9xi+Aeakxee19tCiCAsNGXDQA38Zyr9nZ2I/RPIai7ZHRwsRmO2
	 msCnWjNPfA1Vfqix+tinrTGUGg9mbWEPRUNmP0X5HaJkDeeHgwiXgFtwJnLKnfA+Fx
	 PkvHdcPl7ulkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9695BC02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779055359.26241.7815972549460057426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cefa40dc719a1f724a510512dba48dc551f6d51ba06e053c1c6768bb0295a7d3
Date: Sat, 25 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737790553
