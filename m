Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EA51D5CEA
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750232994; cv=none; b=SsWv4YukcefQcX6KIk+39Z5h0GPlEmTCFEkPuwS47sNiHahzNjly+8Iqp08qqZm6VGjAU6cl0jWsx+rb3Hdsm6Wm9JZKT7jCgW9nkefLB0LxsIQVWuL/M9n3f9fCwpe/APertHd8ekgpY1DmMeopqDxdP4V6rIKEV19QA+SXRl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750232994; c=relaxed/simple;
	bh=Xp9LcUCNzKzKqX1rYtF2gy1gqk0Y4+LNdjzzhb40UQA=;
	h=To:Subject:From:Message-Id:Date; b=SLMpV7Bx/a1n//yaVlJYFxTxwsbrnozVQl661hAKgKohmBoOvF6JvmUnhvRorm2K7yOyYNUpyGYaEpN6jB3GOc61Ugd1zZNU1ZcD6fYRt6YgvJRzsbttcF3tY7dObfhujSytSPYoBZN0TKR3bXJ/3fmhIWRi2jbLkQEQ9i2ygr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mshu0nuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mshu0nuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F20CC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750232993;
	bh=Xp9LcUCNzKzKqX1rYtF2gy1gqk0Y4+LNdjzzhb40UQA=;
	h=To:Subject:From:Date:From;
	b=mshu0nuhUinPLHXPUhSs6QqcMk3mahTwkLbrx3nofDWsdUelFPHk7tyayIsTtkETc
	 YBNzaRRK1vwQkYPma1zUyjQKQzE3vIAdc7N8IlaIA68vAo3R7PV2ULFqnWqXQkMqPk
	 z9uKFjJGfJYKV1CY9HojL/KJGOglRROB3WvZjfu7CHev79KyoTDqD4KnDbjk7xX1qs
	 qIR3seQwdAb367l7bQCO9KFZbBXfKOLKOKXdII6Tfv3K1C7oEwxgrs5BSIGQn5mzy2
	 DlVaBqVbpeeqcBTXZTfcDy7W8nOy3Bg485o31x1zNYIgHb4skn2JOjmvVIHvxHX/GL
	 xos0Jqltd7G3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90170C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023299358.31569.15445900011389540369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e049e5687ed5c1715f95775a6410899f8d1f7077d7b476279feab5770610f4
Date: Wed, 18 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750232993
