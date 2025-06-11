Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2877F242D90
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749635394; cv=none; b=YXfiK3GsfJ7Xd2/HKEe3+v64LoMWP5FmNPFvAKyT2JL58ELELQFlJvJEZAgtp10oHrZ4yedoRRpO/RIkR9tFpyNMzdJz9DKTzpVyf9cmmm4X4F9JMlkK+nLzpOckOuJl5r2oObK3xTkTxwRjcT9FWj5B55Kp5Z5VVOXVZlyZQfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749635394; c=relaxed/simple;
	bh=50+zdFHS1VkZJ0k5AD3cqbix+uJdsM5Q1U21CKqjN9E=;
	h=To:Subject:From:Message-Id:Date; b=M+8258KzSFCE3QiE2WY2Ktxw7cuClS47PicZiy/NGEWXIjKj+OuNOtsGyQUx50dQqqEltZun6cxqGiepOCk60on7uIp5MrwQP9evsXZedNM/FHv3luRBhbswNsADs87K6yuI8nh3atCm6sg5pjM5XB6LasCFK7v5qOUubvsWLn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qhq++cdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qhq++cdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E74C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749635393;
	bh=50+zdFHS1VkZJ0k5AD3cqbix+uJdsM5Q1U21CKqjN9E=;
	h=To:Subject:From:Date:From;
	b=Qhq++cdoWKqigmidh1HvmNHREG6R7hcI4aHFqmJbihcWouyoZVKkfYn7TjGGzjSPp
	 r0V+fwQq4KIyRKSwzEnAxB4JnNC5W//LaaznLPSMI+rj3vHZEGyuZieUO9ZyT+g52J
	 ZT9kIyqNacYcdH1Zg+iMybJZEyUL2CyD+ssq0tQGalQ/uXCjfFrHf/NG0gmsZZiqiL
	 pEhSF4Te7qzT7DBGd5N7iIlmFNc8ci8SvNYJqYZ/OQ5jynoveiuWKbRQSkxZzPZC0J
	 TLzZBiF0gq2bVrrWJWsTzBKfcAJFgJtOxATowOdux0QVsiZ7fAfBv5MNJbUYdX35dS
	 JW8TQ0RM1+z/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939ACC677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963539359.1389.11826742834465823479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a728001aaae6e92fb1487cdc5c1b7e3ff812801d608dc63567e62683472607
Date: Wed, 11 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749635393
