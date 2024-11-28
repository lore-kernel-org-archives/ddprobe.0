Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3082145025
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732767954; cv=none; b=CRqcggJ5IJKJ7siQ7c5kK9FoMWRDZoS4jZSYrKo9sVAclEde3GwfUfHb5++USbfTZoE2mj0uW6fZMr3r3XAi1WWT0SDxGWBJ4oRHvf85JbZd2zQXEzFNYkIhwjhBpplmKsL0Z/z1Xu5uFxdG6hfrVbIUSwkezYi7eN9ICP8mQs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732767954; c=relaxed/simple;
	bh=LXzIv3uUdzqd6rzOquWioEXFZFyR2NYU3jabpdwvCT0=;
	h=To:Subject:From:Message-Id:Date; b=uol1kjW7YNXQRzuKLfyfwz4ydYIkMi0NcKf61C77S3g+2p6ydI2Fx0NWgh1Z7nHVHiTSK8ZbOLJVG/tJ6jKQnMx+66wotGbgHDLKlpAQlwJzLjVyBfkEJf0SkXmgDXmOXVBT/jpHcdBKDfjvAh9aoUhN3FZu0c8ftYL0FzaTfk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+MBar+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+MBar+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B050DC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732767953;
	bh=LXzIv3uUdzqd6rzOquWioEXFZFyR2NYU3jabpdwvCT0=;
	h=To:Subject:From:Date:From;
	b=G+MBar+0oz7cXIT+15Y0d3MhvHW+okl8RQDLQCfLeruxPksRuAI6rXZvuiA3NxwxO
	 fJFgWy/fkCWSRai4jI3IhwM8CMDiUNDEsoytwSEGV1poFVtIVEllN3UPKQPeIVApmg
	 B9NclvKzQnMZXl3C2Bhc6CsilrNlUPyhXcB6aJjsPNl5P1NvH+RVd+AOL1u3vBARh3
	 7NbMudv8MgYDFdpsnI01xcVC1w5GLkppIeognhS7S1yy8wRcp1EejI+cLUFcGJflu2
	 P2IcmdFMEmqAKELssqXQVSczHZ34XlSJKGmIDrp1gKzbWg3u36ZcdarZBDWL/3gwRF
	 sSiAkIw7ok0SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981D3D6D25F
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173276795360.16711.4470044521995495933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd06e94c4e4f59f8a5cde987885ab6a38e665aa760cb80c81d135e1066f5a47
Date: Thu, 28 Nov 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732767953
