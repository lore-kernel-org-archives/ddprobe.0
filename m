Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC08E523D
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710126497; cv=none; b=MXjeifKb39Z8+wMnvStHvqBsv/ZuEF9yXUn9TgQ8S/7gozok578MZr2b86GDaZQi8uH/jeJIhgGA00YaG2xNARLZYA83X/LyY2qABN/m7H7mniLJ0C530zTOflwkpXeTuU646W93F9BFh70uDonuwwuvmybwekvtZc0jKXQAEY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710126497; c=relaxed/simple;
	bh=nwKT0m7RFGrfVhTIpzHfHg+dX1VsUkceFfNBFCN99bs=;
	h=To:Subject:From:Message-Id:Date; b=bPHfufiVh7RZHCyzr+tVphHmBrgqfQ52SmErv4sTL7o/A5Z57CFB1aUaJ4ihP8QuUljQRC3KoqZqI83YusFaRQ0O09hzJpKadYKBPyfE8GucDDNNpOxU906QPgEbRkeLRK5EMpnKjMLpS2cQ5HbrNUXd0hjkbOekotbHOecy30o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVGfCaGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVGfCaGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D521C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710126496;
	bh=nwKT0m7RFGrfVhTIpzHfHg+dX1VsUkceFfNBFCN99bs=;
	h=To:Subject:From:Date:From;
	b=JVGfCaGH4+mAVzaxFkDeBEeLXzWzHZAxLu5+4BurkuJO9vYxG41xhd8gae7JdHZAl
	 b9gz4DaJf8DXlMLGHxBqF1U08YXxUpGRhuOuVd0a3YDCkdaqVXJGjzsyylDWOuYcbt
	 w1I05lePMB90tbknCz2pvyP0swOttKsV5jnyPlMIq507hV2iBJKkbfDAShKMXeyKdX
	 3zJCqxpYcZAmBFmhvGJt3mEtHI2lMpwxpUe7HGFGQc4KX0C7rNwSY8lZcPiN2laI48
	 NFXzYjQUBAAZpMw+EzmWJgs3llojqMGGExIjNuv3RtwRUumwdTzAouTd+VvsTO3BV+
	 1BYBLRMu3CB2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E098C54E58
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171012649637.11526.8672034864612116650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795a1c6774de811054ee55b1baeafe2c8c2cc0c4f4cd2d4bef8c78f3bb33f04a
Date: Mon, 11 Mar 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710126496
