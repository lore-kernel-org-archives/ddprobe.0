Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0644533EE
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706324297; cv=none; b=tbcGmdROPn3XYNXATlIwq3SvXyoh7X1BrF7HgLTWxTY1gqfqBYLf9833hR7HY5bP0o7huK0L/ukcqVe0r1gf/tcUPi7Gsei5e+tS4GjL8q4FuCHrvijDBkulgcWsSXF6YRVpLSVTsx18gOXz4C7uHXKaVTxzz3ANXNR/uGVyqEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706324297; c=relaxed/simple;
	bh=BIoEcSgEFcPLA6T//rGLJSdcYyB811gviztfqC8p1oA=;
	h=To:Subject:From:Message-Id:Date; b=CWrR65gPpMrwX6NHHWz1rJJ3pwmJt0ox9LpJmcocFMRi+Z/HGcqFg0wp1EcdkXcezwh7oMVX1S+U+XsDph/DzvgGJK08sAH9OfdRCtu3H/TQi9kdxosPEli3PPp0ITFrFnoGa7PMZg4IJomcmAomTUM25DDzNdv57bKhvZqnxCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KD3qb1Fa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KD3qb1Fa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C0CC433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706324296;
	bh=BIoEcSgEFcPLA6T//rGLJSdcYyB811gviztfqC8p1oA=;
	h=To:Subject:From:Date:From;
	b=KD3qb1FamPbmjaEsrqpA/tH8hV6aowyoTXZ8XMRbQMf5uwX4pkS6cOQUhmiAyd6P0
	 E6DbrYp2Y5Uy63BRdxllntj4E4L8I4w+kT+LvEBb5mOlAOdp28wFyj6ezGtYGpGK6r
	 5d1ufUgWW7DIi2M+Wiwv1fWxxutLn89eeoMcaB0Lsqr78UkRoKj7iTnXTgeWiyqKzR
	 zRMefInSHiT2mU6XZQ0lApsh7nt4GvRHI4SgJFdEAvF1FkBbJd30WpJJs1roucpuP5
	 WEyCDNHFmZOA9Tb18P/0jBZvom2nxauaEN6oYAaEWUrNsRQNcvd2l6kdR9ndRlyTmx
	 YAPjQ8i2kF59Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFFEC47422
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170632429637.16723.1180478528745522659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5bf07dbc648f8e9a4ab73c0aab5513645148fad53ebc60052f966226399b6c
Date: Sat, 27 Jan 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706324296
