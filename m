Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222ABC8DF
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735341354; cv=none; b=IxysGg4lKXxzRQupnMSy8oxRIN4FuBvC6YC121fQORya8UizPsG645o5OakCKgJg0IjlrQ3q8EhRh5WZKCwfkKOzLzqDpeSmE35ah4A63VlDFTl8taaFwWUvINtuWod2OcI1OPe9rxYgqKnn4ROoNWpksVfHhmUBt6SZrDnbZEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735341354; c=relaxed/simple;
	bh=5jkXWGsUT8Z3NGPxZP86AIbgz4Lcj8ewQZB9W4DHJ4E=;
	h=To:Subject:From:Message-Id:Date; b=UgVQU2uF14Szkb9UixrM8dY0YQhO57yby0orfIIw/zvRBOKuCmzCBnZRhXbWRQ8gt33lfN5SFZ9REa1zvhkR1QosriKIdXezqlg9yzab09PAb6E/KUcTo9EWV8gilfcKE9lwbMCkk7RFHWRMAV++PB+sbheDJ1vUJpxLGYcXxfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmLgJYGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmLgJYGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C6EC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735341353;
	bh=5jkXWGsUT8Z3NGPxZP86AIbgz4Lcj8ewQZB9W4DHJ4E=;
	h=To:Subject:From:Date:From;
	b=VmLgJYGjekNInI/7bFC3hGfjDNobmD0H9GyWmKcfdrtn4qyNCcY12l01K4Mgk8k8t
	 D3WiiPqb0EV7RGxsof95cv7jjw7WnZgaDnd3GCN3ezzgWggdIgJW6uYXnW8CFvCwbg
	 kyqIpm1BbRek1c+fWGCC03HOY4NHsneC8XIXRgHhLbDc7shvyBLxZgHAJoTBBC6yty
	 3DWIfEQyBPiu00aEBRJuLv5jLUfe96ioYBJhrxhsFLiseiXngOh6OKrsFZfCd75FhM
	 0nOT8oe2XITqEunLTe/NhyBaEHPc6NRMgN6tmux/h6bfdlK2SjQANPuC6Qi70hPW+9
	 dzAfkA38IA4uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B52BE7718F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173534135362.11901.6275102017182077038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7322d17d916ef7cdfb5869e1a875d1b0c5967ca44504d17ea9ed4e94f69f9a0e
Date: Fri, 27 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735341353
