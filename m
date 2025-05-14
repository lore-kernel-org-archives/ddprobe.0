Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E5A2701BF
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747222794; cv=none; b=vAgbPVDAuJSKobN6P1lQZ1uCM01LK70wxs9Dh0g/sowb/RS3JTKui07Rclofn7l9bYxmVXjI1ZZw822SG1ojMpKyYT+9epY5zIUfd0Ux7Y+aidt/iZQAQ24dj5U1i89MFPUm0Kmw9D3VDeoYitzm/bOaWlnBEefVOdHaUe7qJaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747222794; c=relaxed/simple;
	bh=Wq7GaCYmEb4Op/bPQG9dFx8ydxMxj8xN8m8CQeovrhE=;
	h=To:Subject:From:Message-Id:Date; b=Ev4sWT/niBoAlMHVixGnm/9eAGKkrFv8s3kXY0kaATiG4WwYLK6J1Al2JZgGqXHZ+81CEExfiPBBPtQQZ4jD6StqqZPGCSo/U4j0aSpzqoYKMiOcfUHnhfndsyiOfx9R7CBslB7sOxoY/9vLdRwA+czYfGPYB6s/+E3okvpwxuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M74sC7bs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M74sC7bs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EBEC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222793;
	bh=Wq7GaCYmEb4Op/bPQG9dFx8ydxMxj8xN8m8CQeovrhE=;
	h=To:Subject:From:Date:From;
	b=M74sC7bsJzNMe6j8zH9a1WdWfT+2AVTyJBGUds2Bo660XMGx1H0OYOChmUsklnrF+
	 WOtIFj8lId0/upg8bk8Su7CklxunrJo46k+/wlo9df1tqsnVSyj7wKnIew6zwpXwVF
	 TiqNkSwaEed3ZD+u/lMIoQykN1W/sZmnOXBkPF13SyjDOe5/TrKKF8RnTVkwfy/YwY
	 BatNTiw7ANOsx1sDIZxM9bO1e1PlWetknpSG4TKa/tyia/W3d7E6YEDLWE4auBdXLV
	 DAk9x6sPnWDb8lBXl8iEWl0dQpg7iS94Ilr80pYeddlt9gKpmSRoz7OehR4nckGIKf
	 6HrKOxV8aceHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE9FC3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722279362.16560.6041263045497899047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7274013a1475280f1800afc4360f5b96a8f86eb6b06484c8af7a001c8a9dc011
Date: Wed, 14 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747222793
