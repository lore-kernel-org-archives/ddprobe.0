Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F3036127
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705818497; cv=none; b=FLrAicS21c0jxRIWw1VaXH9U+lWV+kO6WF4igp2FQ9Ta1pJO2g1CoVgLWQB56FEkpEQO9plZgtDu3PCVsZ35mnZJ/0fNIDM2uZwSoHoDmXdxsKEZCl9tE78lOKfUEgzuTLToJOetz+/xOr3vj+q/D9lnVn/37FAXoNvbzbgAci8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705818497; c=relaxed/simple;
	bh=e2XQzzgtRiyJ1Vv/cEdlMH7/wI5c6qrWOrGOoX3+oHk=;
	h=To:Subject:From:Message-Id:Date; b=VnayoS6jJ/dmRyrQVYbzI7DB66tYYkT6RX5BhWiljx1tEjq4mdYmUJLHa+DzaslmHophXrCDAQQh+OxZZyEkeHtszfUJOwupQDu/dce1TX19p5JlsO28PynGHx7ADFOXtI/uD1Hi0mFOo1fVs0mlOYKid6vIAnNUecD9ibVO3rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COiIABPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COiIABPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 797EFC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705818496;
	bh=e2XQzzgtRiyJ1Vv/cEdlMH7/wI5c6qrWOrGOoX3+oHk=;
	h=To:Subject:From:Date:From;
	b=COiIABPWrfLHsT41C+PwwhynSSJ+y4UAYjcmJzb3nVk/+0bpjNpdiGujRyIxywoec
	 8GxXs/VJcpVb5HrCxPF5d/fYE7PFeyywqSb+urPjlBH8Z3i0tPKwv6HWX+8UrShHxB
	 +kWadE3I/TjwZ/qG4vyuKkVz6OQOYJaXcxrnvnrue5ZY8OxQMVpsvUh+s8A6VAvx8n
	 4Hqp+duvansWG+ohd1KrR9Ok2dH4KVUb0gnCRGEl2Mdoi16pfzkf6Y5w+RvLn4M4mN
	 dzhFveiYfmxZvLM6GUOXVoztm2GRlMRMsmOnfBFRDzQJnJ9bVS572c2cg8iOqlZ9Wm
	 MUgo09fcWmzmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DCC0C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170581849636.9834.6929474187899667051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9b71a434645f4df197de1761df2f05a336ea120834cf64a36804a30097432d
Date: Sun, 21 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705818496
