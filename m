Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA331A08CA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749742793; cv=none; b=PCpSrCqMnor3H7EHlK0J9jtMVsvQ6NTg6Vw9Pe5+I6x8k+jkN+6UbxT+G9O2y58nMLz2RqvKqF0Mir8sWRrsaiPfOM54QBRJD+URI+VIG5B2CTBjZYK8c7LOzisvIdWdSaEye/3Dc87o+DeLqqeCclLXUMeefJVZDNCbIhwDJEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749742793; c=relaxed/simple;
	bh=g6E4N+DrRmvtIuvHOabJNcgWD/1evdvTYRdSuEPnHkg=;
	h=To:Subject:From:Message-Id:Date; b=IWG02LVB3XT7pw3oKfe8a6UT1VDt6UcGsnH026EWv12UXqjgQbn5NeEJUkSNRH9M1jRn+jQfVx61Wp1o9orcRREWmDniJ2UqqzQeH3EUVoZnk/qp0a4ILgqBc7caLIqC1lFosPx8Hb881hbKlN0gRBN767qu9Odxq5CA/WQBQcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNUKbgQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNUKbgQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CA3C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749742793;
	bh=g6E4N+DrRmvtIuvHOabJNcgWD/1evdvTYRdSuEPnHkg=;
	h=To:Subject:From:Date:From;
	b=kNUKbgQ1O81ZPQHSZcLiRZOhAPs7Ltd9HUJxKjcOfLpitXXbtAUJg/Z5Ee10te56H
	 YwsxPiM9elCPczuv9ahceQzFDCiswDehL2UcwhMf7AV6HFtE4UMssWH6xT5c+E3VxY
	 or3n0qYm7kW5Qrh1710JJ743Wa+AIM2M0XL6XKVZFOEya+jJSQOJwH1JDG4UqxeOGn
	 ZWEiPTY4SqZ9yUkeA+/ikipBy3/m7NJHwjAiOwx93VIsu+usi9U6wHijv3CyhBRZJl
	 9Rp8V7IdCazKUdZZ/lnypDz1xgRC6toQsYloFG92AVtal0Kbjw6lYpyhLxaQ5sNRtb
	 ZYZixaeoTOOhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73DC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974279357.8775.11010348110442753509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25755712a6aecf14519a2fbaecc06ceb13416c977a36a00cf9ea234d6079b35a
Date: Thu, 12 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749742793
