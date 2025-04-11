Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F86B202F67
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744357794; cv=none; b=T89Lk1pbkBR5yQ/Y20UWWhIb1sb30tQv8pjoy0orQNWQDMhVmF/FlHPOUxj/OWQwwNlY0wZ4TLV/xLUzyamDxc76BvTKtmkYOSQxo3wefsOlhRUvUideY/hAuvreSkU7ww1iP8ZVjyG0KCWH6hu5PBELokF4PHMmMKvOzXKEEs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744357794; c=relaxed/simple;
	bh=fU0h0UrljXv9XTMg3WObygrmVXhyBLhHZj4LJRz9W7M=;
	h=To:Subject:From:Message-Id:Date; b=ZRYmkpCtFLFV0k87ACBzKZeZf3FwObSn/DdYZaf/x5eljkzJmCvPn1KrIJsiqRs07CPS5P68bxGlt+WIxeLW9HHeB8B+5Ur5MVeYsXpfDAlqYGzJ8KU1ZCk2hPQSc12W2DzlCMjysfNuxKefZjXfIS4nsUfo2ShUp0qU9hPgoOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPDOrGgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPDOrGgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAF2C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744357793;
	bh=fU0h0UrljXv9XTMg3WObygrmVXhyBLhHZj4LJRz9W7M=;
	h=To:Subject:From:Date:From;
	b=fPDOrGgZNuq6kdSMnwR9p3jJLpdZ7Klp7sPE2/rNOIs3S67cdCYqBVMjqbmNiu2l5
	 9r5wN9ondNe8FepFXHfsdswXCMxJOSs3u8U5YRJjRCX7OzeRnfqWkpFDhZ9GUTnT6j
	 fgOtIBZsTFKbTf+Ch75s1EeUKtSmoQJSW4RD6lsFs70f+Q3Yf3NqAb0K/ZmQBa5dbI
	 JBZQTs1WSLaeFDjidoTHq/Rz0gThlU7/vWmSoKyiF7AMwdzrSAIC6qKWDpyj9UsFOV
	 oABWRSugiQglqOVj9tMNKK1+eOgat6kcUZNEQPTqyvXnOlSJeB/Ss19LWPTHzfjj4+
	 ejI/kX+wjNrew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94927C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435779360.21050.5260001108768109376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1885630453848c197ea7a9f4ab87120f059efee6b79e5c2bb99d42513e23647b
Date: Fri, 11 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744357793
