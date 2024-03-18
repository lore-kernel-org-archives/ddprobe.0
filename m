Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80F558123
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710794897; cv=none; b=UElWR5lsxVTgdBpMCT4B8bDrGnyz+puXiEiK73MYgitfkrEWKFgIixrsUtR3MZpwW3KN0uJrKwMcQ/1Kv6GbF0bztpEjU2Z/o9WtAe8vpGPooQ4CB1lyH9Rc1BQa6Lj+Pa5GotOOIlEGDYDWkE72rGk3oXp8xVXxv+xLUDWZpsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710794897; c=relaxed/simple;
	bh=N029BUXqOwIsWWwPGqNQRKP83zih2yey83PVCEf6O8w=;
	h=To:Subject:From:Message-Id:Date; b=HIuFpIwLm2+RXfIcZIf763xRZT3sgWvauZ14jxPZCBU/uGIKwsvOJL80XGiVfrQRUj8eYBry8j4ea44WDiYfj12o5Z0wH615it1fSPyih4kj8SRIz57RDtw28/+DSQQvfQbkkIexhL49yDl1QpaFdDYygU+P3TV7CMlfoMePtY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Od4h+yb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Od4h+yb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75637C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710794896;
	bh=N029BUXqOwIsWWwPGqNQRKP83zih2yey83PVCEf6O8w=;
	h=To:Subject:From:Date:From;
	b=Od4h+yb6ZzIOLbizFI0jkX9JmlbOZvrPPHkFUltI3wmw82x9mH1rsTuwsUcH5SX+g
	 VjAH6AwYcmoF7xr7UoVd3ODJCMF+NFTSjewH7/dwWrJExPZRRgLz2KvJ/kAvdVXJ6k
	 ddQAqA8IulJOYT66TrPL1BcDJsVSVhXG8DU9Ven8hMDL5THleNbqS251iZdjxDLvkw
	 8g5JXge7yt3x4wovYgwDrhp7hwa43qKdE4dk/U/Orcn698X9Fh6cIz9YbOyxDODIce
	 Dr67EakBW0D41RQ8AVRMjr8LLH+CHkR8EE2sSc0kqM5xW+9MEf+aEJYC+UVZ9j25PU
	 HjAlRGJTtaO7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630DBC54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171079489638.9950.16329427025682380833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea89719806a4259da2b7097dd7d2feee2b44a0ed17a2ffd314910d16ba253e3
Date: Mon, 18 Mar 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710794896
