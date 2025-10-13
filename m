Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A29925A63D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760389794; cv=none; b=IlCXwj4rbv/EJVJitwR1fd/InsG/hOnu5kFdvHP7Lu7DclovnvyOOGA7K3yv90yZYED3+XG2ZSxZbEeFv1J8yBDzYS//rWlp6l6F1TKJTHoXVoZEmYsT3bzKq59X8a9SKZ3nYMpr0W+Cd3aOC0kb8KAzJP6euuSwybOUZtSuTc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760389794; c=relaxed/simple;
	bh=xlAy6BC0AcW0HkcshVqDAlI+XNZlwqVzapn0Tn8+pK4=;
	h=To:Subject:From:Message-Id:Date; b=cxVeFkfldrb6I6Q+0GqNWdV3536gmZL75jdWYn/qmLwhJb1ebqvMU+L919DlboG8uHvboOdB0a6cP1JA4ibM6XqOnmZIO6RgSOyrvuWtD63wYh5+Uzrw9huAGPndqC5GFnyqOLttEAT/kDq0B31HzKgK/TUlzZCOErqufBz8IgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scTjciKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scTjciKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ECBC4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760389793;
	bh=xlAy6BC0AcW0HkcshVqDAlI+XNZlwqVzapn0Tn8+pK4=;
	h=To:Subject:From:Date:From;
	b=scTjciKI5lTh3HU2Bvq8VpLyZShRQ0Llms/rUy8ExBY+xydFJ0ya/vSVnZTAvqVy3
	 J0jFNQMd5DqfbffPsgyRwA28ECulzDrzpj+3bbBCabdJjxtq0GbgyHj+ym1KXndztl
	 /4p44OCx5Ex8AtIi9kH/uWY2MU+1KxdyN0ymRkRZ2n4usbUvKqYQpYZARw6xZJQ5F3
	 ZMixyKJ6Um0LUt3J2aufZLDrsfe82yKbQPX+JOmalfw8A97KuGPlLrAsLQHqnnb5ra
	 zvTxxI3rTCs6380pjqFIARM+/qJdp0dOtyHfPH0MyzwoFGjwVmZj68D2MmVgH1a/HD
	 MEahpbhz4px+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ED7CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038979358.316.11563236365910441737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15e855eed154a1a91e6602f8c1f84438c20f9f12365e9af084d6155510b4dee
Date: Mon, 13 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760389793
