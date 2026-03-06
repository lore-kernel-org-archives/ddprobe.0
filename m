Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58FC26AA93
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772803493; cv=none; b=LVoo0ZioogxI09q3i/kZw2k3GJ/EFbczJQ9Z10bsxvG/h7mn1CwkvV8YMo+5d25WYNwoIE9FnZluYYLL5TfZWb+WJDmkoWDEHJpRmKQYm04AdOuYrix5LGHU/5bOuTqSsCwkA7wdJokJ9OiHM87ui+UZAsQtaffVrhebzelLgRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772803493; c=relaxed/simple;
	bh=EVXTakI+xJDq01kB4rTkJr+Wu1Q+viKUuOGfEJwpXBk=;
	h=To:Subject:From:Message-Id:Date; b=YvqeC0Hc0TeIcbnCNZIp8PK5r2zwkeo0v4VaGUE2MiiSabKo+ID0qqxPKuzmW6YKL9bb4TfnGL2ZV3CSnLwbEzw3yw7o6qScKs+ovE8o1Usr9wYj5dmuKeEz5duXqou5aPyDOXsxEh10hDG5014IY1As2uaip3GwldxuOT3dmew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhwDUjNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhwDUjNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B50C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772803493;
	bh=EVXTakI+xJDq01kB4rTkJr+Wu1Q+viKUuOGfEJwpXBk=;
	h=To:Subject:From:Date:From;
	b=uhwDUjNU+ad/qKZLrOc2WAZCx6ct9H/EidFr3ASeSLxe8Tv/FGU/nTXgnmecam8JI
	 DS3MGmokCUBREvBc0kX6YwrqcnK9fJnPMuAudVeO/w0ekyk3k0XuB0kWYl5o7Vn9Fk
	 KOu+eXpbwAEZ6nEphlkq7QMfT7wBxkGkWCpJls5dp/TcqpY7xMt2LMHCxvIriAjAeG
	 VKShj/Pxky3ccWGY/v/lgUNdRRxKb1fLGM90tF45HImYM68TZMYanqWANb2VJmnU2z
	 3d8iHXoIAy8sB46WxMNSpkSElMknpCo0jVdGycEEaGkHfYVHIZPOLqJSsR40p08qPf
	 aZnwqi929HUNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961DFF01832
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280349360.31348.13736733274196677420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f9cd0e6787efa17c92206b0f2e94ee59e06ee4fe25661766cf54e861584359
Date: Fri, 06 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772803493
