Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A41801
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752098994; cv=none; b=s9oSN6O+yEpKvcAy05Qz2IPkjAv8gOd4YXIZW75mDiR1ru95SQpZsF+gs4rVXCqqHDLQapa5G1OBfrpudHc4KkZQTmTt92r9wfzzdh1nnj5OTOrhvPVulbqWCZPE4O2MfNUW6a++PEFINh+BJugWsziAHFvNQuunkHX/4F/tI0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752098994; c=relaxed/simple;
	bh=3z9diRyHnnC/7U8MkrCKzlyRh8QdfKzRMJd/2iVI9ik=;
	h=To:Subject:From:Message-Id:Date; b=Yo51YmidmHNQi8JWqvy9fGw9cQvc0ztM1SJyqrDz3Lkg4gLEwcuIuzFHFr1fiAxySgLF0Xw2dCPukt24XBy+UzzZjjO7aKaMqERty92lkmLwO6BcfZYacSd1r08EK0Q+buczrHQjBYdZZbquJ8DmdZ/zYHM8njjzqiBXvlN0uQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+fW8Flq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+fW8Flq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6607C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752098993;
	bh=3z9diRyHnnC/7U8MkrCKzlyRh8QdfKzRMJd/2iVI9ik=;
	h=To:Subject:From:Date:From;
	b=e+fW8FlqclgJ+rTY0XAfdYBXs0xvk3kNM945hjKAAuvhy+deC5vpA9WursbL4XzyE
	 YlYSCm6LStHZq4n+3HTpXTkf+wo1vhm6dOeCcOmYM7hC9jjF2ElFk+oEoEIO1enf6k
	 YuEiZNFJU97O8XEyB+x41OPoWAQyZO+YtJE0pgGUe2FAFR//ihsPzhquuRYrWh5yC2
	 306zyhJZa6RJytujv1cCXpPJxEFDHONRzTS97LXEX9UdPN7q8ytYs73kz+w3Oaxvkt
	 EEC/Td6S2oWdNqtMbAb7+RcfNuCPl/363lDQblmsx8/OyUpCMbe2fnHL3/qqRLwDNx
	 8oG9TSfUkCVYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91498C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209899357.30669.17124522613593705510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023f723b91f4edf9e3e539ab9b7b8af5bb426f218fb0a936e8ece22cead71fe4
Date: Wed, 09 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752098993
