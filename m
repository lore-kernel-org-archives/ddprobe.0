Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D3A447811
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788466834; cv=none; b=rE8q6wgU9BVkrCb2JX7t3/v8/7ciPCW8ulI4jpTY+Fb0m7sdv55//edX8TpXyPD1xzjfUyfE5k0yIgoULWqB3pJerPHm8f+X+jNuvX127D0VaiWAwqcLNJbVcUbtq+EaD2uyNGyqDSpCj1nIVzh2z0ohs4l+4MqmW0bGLfXzaOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788466834; c=relaxed/simple;
	bh=RjEzVKGKjFOhm48yZeqGSSiZzH7fAuuZDSo5E64v6yA=;
	h=To:Subject:From:Message-Id:Date; b=nNPjQ9TsbO/WpgR1M8afp4dzO66YOzla7rgwbhySuRzDaC11nPwhcpB0HrKhHgMhEiS5Qt34LsCJ7SljBiqFHXMWFW8sXTMkTm45tn/8zS5hs6hhsMlZRCbD8bsxvsTIpRg9s8/og2tEE9I6+9Rjep3nuy+XfA57MSW0KZh5fnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpW6/A6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpW6/A6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF73C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788466833;
	bh=RjEzVKGKjFOhm48yZeqGSSiZzH7fAuuZDSo5E64v6yA=;
	h=To:Subject:From:Date:From;
	b=RpW6/A6TRBJNXdJb+eofqbrapeBdy95/eQ7Kntehg1EuEQi/shSn6CrNH1TivaxS7
	 psYidV/EWq2/qcgw8oeSzATr0FHU5sI9Qpmowg68fZoJArnkL1w/RexZT5Zsfr3JBB
	 PBS7zAXT6+oJ0Sdg+Xvqum7iYEqxYNgAlz12msp9VU6EDxQ/8IYQJLYAOgyn3mR1Dc
	 DMy/WvKJikuT71JiFNMk9IeXVA3zhczFIiwoXjwxhqeqxqoSJXZvSo6YiogxmCgKC5
	 EtYTyU3IXkI7haQV7okkUW4MfXu3LESkxqNRNLtrvm5urlN8t+qUgS8kbnyd0JLtMM
	 ozNr8hXBs81Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2DCC624D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846683369.16236.1259554217011067454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f29f1b043a09dc7aa0f8055ddb733c85b18ec05abbb7290a4d51e6f30c22899
Date: Thu, 03 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788466833
