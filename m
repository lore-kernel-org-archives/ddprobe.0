Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C28713C9C4
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738001754; cv=none; b=l3WjAeA9zEl2314ghn73sBH29KSraOn+650qhUP+pDlTcGH7LKTJxEloDcer7sUCZLLnTs9jU0lVz8T2oXWjAaqwPY4HdNB49eKqhB9WG2mTtubPO5oEhaQvXSVKEurehtPJ6J304mi6hQ37bFFWZS5gE909KsctwveL59ziH30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738001754; c=relaxed/simple;
	bh=p647rFrw4hvZU/4J8BZQG0I3CHRymk1iupaSD74HJwk=;
	h=To:Subject:From:Message-Id:Date; b=QrRKKVP57bZLrjnXY8Xh/Y8UKlRE93T6xYAYhskQ0W0/db/EKCkyFvL5YwZFUPXVxPeDG+NcrQ4E/jUtbyZJ7FR+XjnW4KD0rk8hhoOg2JVMf/+ZXXXB0zMBTvJuSWToFrbNA+xCYv5Rgff3lKeHc0f+Z7cV7IMQrLkanwl7tYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCJrPLAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCJrPLAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE34BC4CEE0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738001753;
	bh=p647rFrw4hvZU/4J8BZQG0I3CHRymk1iupaSD74HJwk=;
	h=To:Subject:From:Date:From;
	b=iCJrPLAXxKdqyzKOYfXHa7ALeR3xSXN8elkhXtR5MbI3MC1D74dD+Nsow74YKz4hD
	 AFDSTMhuvI6PiaCDzmSqwfhEw5BA3E08AtyzMHRtU62bNai4OFW1fvuNvHtaivBZW6
	 noU0sQQqaMaEQ8VYoMD5esk8XJpsxiR+TG70uRcn8nD+D7xSrXFM9pwWvCHj5Bcsg+
	 8qkhiqwbeNrG49omHTu+sKxSUelsReHoUDaI6w89r9mXjA3BFAnms6YjVVBNzc4gB4
	 4kiVZuH+Xko+T/8gqwcCGTffSluEod+A07DBVwzyPPKy0olbFPwZgbQMAUDXe/sR4L
	 dnsetzO4abv6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A930EC0218A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173800175368.24251.6530553395690339491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39889f398167fcd1b9604b33858ee5885b38ee155adcf851a9b93099ca038306
Date: Mon, 27 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738001753
