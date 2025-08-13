Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237062BEFF9
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755063594; cv=none; b=saFkn50aJ4nFNRAxKUhdto5hqf5607X6hg7QzIpGvwTjtAwzE753IT+iMqLpJt6sPWdbdF0lN6f1jRIdpIjyDyKYWzQ0sOkVEPeYA9+2ANlFwnTVoKWkKDNQpZvaLFI9N9YEKZ2wYO9tk1pHni1b6jIMst2H4qyZX/oElpfbTEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755063594; c=relaxed/simple;
	bh=J/hnEZkWwxwGFQARpnVDc+6PfqomNSs0VMfHhmDZTKQ=;
	h=To:Subject:From:Message-Id:Date; b=EVGwyUeuQLJwm8Fzd7JZFJgyHQz3rne72VLq0UgZ6OvkYIbFGKQ4jEOQjWFEGf7FkndbalMl/4R83slBC/xVqshGpO2QfkQZhyq/P1z4OaMUFPBtuRD1IDjnmuUQvrfado7Ped8bOdvSgo2+kuksteqG1MbRJY4QdYkz9mEsXp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4sCqqGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4sCqqGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0739C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755063593;
	bh=J/hnEZkWwxwGFQARpnVDc+6PfqomNSs0VMfHhmDZTKQ=;
	h=To:Subject:From:Date:From;
	b=Z4sCqqGEzFzlI56hLQ9ZcrZIn2htUQSkqEzGB5mEjwtZ3/9MBRm5Vu87GUx2s/s8v
	 whmODlwL/omArSe89vUq1xRRqYZP48xXGE5DbjCK3w5s6I11MvYpwc6wExuFkF+Vu1
	 OV2TQ20158FPrj2FGgtPsweyewdoguRC3f5qv0VFxTrglRbtqCexJ/hVWEUI2Jh4Aj
	 0lzUm/qCRLxQq/mJ7g5oS2KXwZ9dZwzASV+1tABUhES4RJ3XbDrWmAIf8LLt6QlEqH
	 caCQLHDa1QhCz02uRClOIecd5+1y7ZpSoQnh/nInrV4lrhSnSalF/zN8jUeGQHkY1O
	 +MUp8BnwirBTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F409CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506359357.7797.11388926417335494289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530a09321981f05a3071df0f763be4642216c1981e163473967d3a18d5a1d038
Date: Wed, 13 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755063593
