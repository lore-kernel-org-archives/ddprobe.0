Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231033806B0
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786120234; cv=none; b=ClOD0VMzqlJwNJ1nsM8hSQOMhAiVh08TyDY0U3If7CoqnUf5Dt+2avLHOUvmP9n+EJHSY4xiapt+8LGiKZqY4ph0fwx4fopxnQdK7SSaZnpL7UIz4AmLtXi8wPMNVbRnWp5rCjlqIRcUlbZIzHgxxAzdrY4WB0RqmnWb0+7qTog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786120234; c=relaxed/simple;
	bh=6HR4Nxy8/CFzgIrTupZpWZFcEgxKiCMbGOlOznld4sE=;
	h=To:Subject:From:Message-Id:Date; b=P0uXpW/5b82oLqD4FoYpWTruSVFPW10d6qrwSUZ4w3zJeKig7QQZtKiSDYuKdoeZaajvVyAXADBfnsUNNpxPd2fYJ6Kz0q+nkZdmBykGBRss+RILIY3uTAfxdNJwH6Y9oD6hqgmq85VlT/3X3HwHgjYhQF0wGx74rGCizV9cCm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqMI2vhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqMI2vhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DC2C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786120233;
	bh=6HR4Nxy8/CFzgIrTupZpWZFcEgxKiCMbGOlOznld4sE=;
	h=To:Subject:From:Date:From;
	b=FqMI2vhRv0mhV7+36s+gHy39ILECoDaASp6p7rVaPbDceTGuISqwzMRxvUlnJZpDZ
	 XBOwqHfG3CEcdIDrMN/82h6kx4vBaD9OL5laCDRy0qrPEhw0tPXPjpwk6i0RPtqsLw
	 LOCmBZfU2yp7BnLqAVQokuviyIMU+NNu8Eucx+yCVG9N3vyisW1i4RvVFkaBbJkr4g
	 nvHOzSqqyDsPrOy7CnNZ9uO3VpfVZqMhkGiziD4djWCqDIsM4C7WJTI9wZ6V2K4JVY
	 Obbv2XQyvoS4zv7NUH0BJn0WVIeHrxCnT7matNvqKQ8twwJDriEd5RBeUQUe27tfip
	 kocN0ElHAfnIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB76C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612023370.18348.14252710415956424187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f11ead4d835a74188e67043a650cccb7f8fc1b30f4a81017510fea2bed7438
Date: Fri, 07 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786120233
