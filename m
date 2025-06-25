Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DC817A318
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750867793; cv=none; b=Yo9Z5FQzl2m7QBZojb/q4i8JvjztAdVKBK512pOxoGw+3QE5vAwphKkFbUzHcPjV5GG3w6NZtqhdrPcv2+IhTUWcw8ZiGGVjAL74eG1I+4GYdr1juPz7JxyjRj5l8j5mY/Bkxm/b9XunXdZRJOEUwXyNNhvjuZX4hx1zXqumMPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750867793; c=relaxed/simple;
	bh=3RmgbjywaXOoTABOL8zrE4DakmMXwyoUB9ZptiAyuC0=;
	h=To:Subject:From:Message-Id:Date; b=uwy7n5vWOT4mISNiz9pf8ojNGylQ/4y97Q7xVTnJU+wtFBvlJwe5mGBGec6zpcGw7XrcuniJD/MOBCtjJn2wPK1aQrra7XLGsoVbykaSSURTv3Oyt6VHGJXY99XSTt/EEhbX/l/pv0dOjLh55YWgABrN2kC8j9nHw0lfiWCjglc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gN8pROda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gN8pROda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C93BC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750867793;
	bh=3RmgbjywaXOoTABOL8zrE4DakmMXwyoUB9ZptiAyuC0=;
	h=To:Subject:From:Date:From;
	b=gN8pROda4Hlhee8K3tESO1SSYFjmE/Lb1icps8oPtWFe4M0FAWVjbLIkzBBs7ECZH
	 HD5cjuJsyQHZGVHsISHvqIRsubWovWp4IusGWX+vcctPJUOfsvyuT9YtsQpRh3LhmD
	 TYV3X9uu78QIfGSU93a0gqZz/w3AzN8BF2Et2IpHhwtAMvilc+8X5Iq+CO9+8H2Znh
	 qCjJghakz8tL5e9TfIuKrNlDwSFVf3BDY6zI3meBONvTBStfp5AgeRI4odcoS3rmD7
	 fzoQRSO1ssG5RQuPJsDOCOZKfOoIqKaw+0Hvc9SQrLeJ8if6Spvyx98a1lm8JRJM6I
	 nc+u197LYgo6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5BBC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086779357.13546.833013010729091631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d4f54ce284f77eb7b36f8f833c4608ccc2c487bff2b716003270087b961909
Date: Wed, 25 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750867793
