Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471271917F0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732698354; cv=none; b=fQoQfKFsQpO+xCkVjgDWG5jb7xQx+1SKBYrQ0tj77jOuV80ZEDZMISgkNkKEUEcYFRajzK304zpxHwOO+LxQTQIpPEaiNv4400U3yT2I4AByoQWx3/f7F2scnSncMy9IZ+/caGMgfq8izBAQl1zfUSyOh6cmG7AggtTljCV59bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732698354; c=relaxed/simple;
	bh=QpzQqa1Qa1WJUCbZ1mkyrJrX6HmhxlqKsAto20PZsB0=;
	h=To:Subject:From:Message-Id:Date; b=XeXpeWoZiDdyg34N5uxv/VJyj+urqi8nXRVGUZDeoLO2F1h2w7mklPi9yX8kCHLum7TzpY6kWEnuMbqQyIXj7UUXv4JA3G5SUfUpspldPyobRCC0C+ZdmJ2zIHwGS4TaAIXDQtsli6Ar7B8huDXuf+r7cEP7kFGlykHTUv/HrlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2X39DOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2X39DOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1791C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732698353;
	bh=QpzQqa1Qa1WJUCbZ1mkyrJrX6HmhxlqKsAto20PZsB0=;
	h=To:Subject:From:Date:From;
	b=O2X39DOuyyl3brzG3d8mqaHhTfdpAYaSaQcdJJP2CCG/fRNpX6g+3Wh+lcG4oUcKw
	 0QI57eMzTcjAY6kLrWRm2UmzJ2l/39vslhZ/yzHxqG3db31EWt9zhEattc4khIDg++
	 ny/iFeniS7RLrRSJ6fw1WhmWVRVRguCxcg1K/wMHkSDCDQWo7l2ZXq3T7qLZCN5OeD
	 KUqKXyX4D/BpBU4JgLI53uyPG9r73BjCyaEo5ei1GgtDZE1kq5VLq1uMK57KzL+l8c
	 s4E0fVCFDGZ6MyEFsfbheITCjWOVwfT37kSbEY7565r9fLSu6uEG0SWltL6mMETLNT
	 YqDRIsoCRn36w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE64D609B9
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269835363.20056.12829127991039887992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499204dde3e83ddc14f5009467f8286c7f4ad20cf05ef6bed71e2c8a8caa035d
Date: Wed, 27 Nov 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732698353
