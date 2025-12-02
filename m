Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7E91CD2C
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764652374; cv=none; b=B8AE7lwA2Gs5WXmp5EJYsm/RX3FJq+VPUVa4xdQfVpitNRAj+WzY+YP7Yk98EsF1AvKMU+t3+ec1NzzoCKUs5yuRX0UbQff+0dbSF+2kuM6kXqpfQIoJkVK3r4Fs4L1+BolbQkT+rgjgjxxpari/tGA02zJG5mJ6+Q7um1oBckw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764652374; c=relaxed/simple;
	bh=0y5hgbeZ0GiKAJsm8JswKyYP5/B+z89Gj48ccJSp84s=;
	h=To:Subject:From:Message-Id:Date; b=HDsYPBogH5zbv+8Nwu5Zcy26PhxLzC9gi+uOKC/ZEI1TM1L0zTdEUDw6p4O4y9rWwScsZxEbQQQXf42bZm7a3Qy080xcpw+xLi/VIoSfQjvxqz6/F2tYt8iYJDRbifVxs9gC+4Hbe7OaoO2WKkL4sjTkLdzkQMbWgSxorQZUNs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=II30Jtks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="II30Jtks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37A7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764652373;
	bh=0y5hgbeZ0GiKAJsm8JswKyYP5/B+z89Gj48ccJSp84s=;
	h=To:Subject:From:Date:From;
	b=II30JtksDezDy7SKGxxblxVywmizJ9Sl1+cxAzmVVSoZF1b8iAlZofp7qe23XLbHs
	 Bur5H0992Xa2bm95LlVFQ30OG4qiZssXlpRj6TUoz7U5wTte195+m77JjCsQY+XXsd
	 GKuSXi4ASycal9pw0K/RVgXEUxiytdge3CRytX3LUoI/4uiE/PCEgGhkNYWAX+ovaP
	 9Uvnk/4PejMQvUwfkqtIQF6Br3CgZlwCL4iEFk1YC3P98qnlg3pUEIrnvRJv+LwrWh
	 riSSH4muX6AvU2j+ICgT1HrsSwZjw7WvDuAMiWPaPQggYy8RKVkoCdpqN5xgIKs4ky
	 8+NzX/B91bTjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F04CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465237358.16143.5756311015190753600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a4110efade3a6b4ddac153ab2222b0a643998034a5ccedaa6d23ffb2104b4b
Date: Tue, 02 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764652373
