Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112BA33BBAB
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769510634; cv=none; b=cyVKb+P++MKcRNQaUm6yvfwQou3IGfEeYc5QUNlyAENDB56J3S5ojk9pqgYdzMddRc8tEtVWRAf9lbEmPfCUMGmEDKVtUpZuSD5LXaD/t5iygK3uE28rnNebWaA+2DvACP0+a4sfI34TO2/7ipg+TL/6veEzufLm4lJYqwgkrk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769510634; c=relaxed/simple;
	bh=FWs8DkT2h2Jgg/w9qReLxUSWEk/oYfteXhNw0hHV8rc=;
	h=To:Subject:From:Message-Id:Date; b=MILp61nmkTLf65qS+NsUzJ3UyxAgAJi7jM9gDjjsQOk6cOE3zfp+T6CjC2kYQLL50Sl501PYSMhEpSQFrX6Hcput4dDQL7cfsy0nVr027NvgUWlLkPTxIhLiYv735hn37ObhJmW40SL/tzocZbZC7cSCwcRnpBYyo4vC4/kWhd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AupSCN4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AupSCN4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F94C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769510633;
	bh=FWs8DkT2h2Jgg/w9qReLxUSWEk/oYfteXhNw0hHV8rc=;
	h=To:Subject:From:Date:From;
	b=AupSCN4HZfC2BMx7uP/EZICMaAfzdVlxlGcu1dFcwseCZFQn9I9i+slsErJxhkvCS
	 erOY8o2sjdhXKD7f0KM/fiSYpaCgY+gHN7qQguB5W+vfBCw/dlDj2vHEfpz4tV6pvk
	 AxMK2/Z9GUEWJ5kD9PFdxC5/TlAK+G8nt9VoXjuWGM7/g0sVU3e+us/xSko74AANNo
	 SigR0+WtvFDK10aPS8NejKmLqp5G8NC6b7xMc0M/wde3GRsocKwoTqYmhq9h/03sxt
	 aSmlAdb8RKaqkjshWyU4VPGYIcWnGFCaaqqBgfkxVIHaZe1dtHJ6HHbnRm0GQj0ym/
	 FbcjTEIO89U6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976D8D2D8EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951063359.27476.18144803568153209939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc4bbedd8234bf8d0ad8084261d8d14e88e945e7fac60c6be171d4de546e871
Date: Tue, 27 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769510633
