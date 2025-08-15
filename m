Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A151DA21
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755216594; cv=none; b=U8a4wfMYJIFWLbFhRpW5zDTgQeznbxP7vckkJ4yw3NFAYHxUi0C0m4DklCFvjRkbB1oasPqtM3Qjl4ojGKJyVgO/pkOwxwhMQgYjegbgG5QX08NK6tYnysU5JquSTP5nb9TmWC4tdg8BkcYnKE3p68FdoAL4vEycCu8Iq84TDZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755216594; c=relaxed/simple;
	bh=dF4E6SGBOapTRxBwN+WE0BMX71nhn/PGUnBBj+LJwuA=;
	h=To:Subject:From:Message-Id:Date; b=svfL2QKJCXHZbin62fK+EMFSMb9fdCDJ3PX87IYYtBVvXbd7yFIJioLktoKwFZYHCH7Sgn9mCm1NO1F/IEkpSux9DHcXcGi2/rQ5QG8+lRimVEgbxakHsyszI5eNYXsH7e8biulPWZdC5DHSdijwpDVNKHg1bQFfPT5qL2Nam9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOUWd3pX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOUWd3pX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F14C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755216593;
	bh=dF4E6SGBOapTRxBwN+WE0BMX71nhn/PGUnBBj+LJwuA=;
	h=To:Subject:From:Date:From;
	b=dOUWd3pXIOjPNCH/R5pGPp9OS83hofcrFiRErk3CF2eOuQ7E06v3/JtuzKQEjV6Sq
	 zbidx6tl04T1vTHOqtRSX4CAAlg0uovrKN+BNltKCl/JJA/Q6bZrXyt7inkAt7WsE7
	 zSMQ4kBlY+XZOnEiS8wQTzQB3dhu33NaT6bPB353ANrLg0zailZw8QkkEYQN3OuvpM
	 8hjmEvGSaChXeXDmftsL/Uyy11gysNI+l1aWEgVuEe7B7ga0FUEffd9k8AqIv2qH+U
	 7EV7LZg4KwYFEi8JwnapVTc6+Pz6AVdAsiXMsPlem8X7Mp4+7FKLkY4g9i/4oaQbjL
	 GOwuT0n/B0pZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95854CA0EDC
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521659360.16622.15973032360770285342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129039394841edc92583964bada17da741b98e1f472b36eec27609176d82f131
Date: Fri, 15 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755216593
