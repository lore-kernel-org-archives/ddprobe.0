Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310CB17B50A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736267154; cv=none; b=qhzttysWFLTO1DdKnLLMM5PDqYe3BQ6yJJGvbCijs/Eue0irtbQhDFgwjSyFTrpw1jlDoE+2vL/0Ok5Ob85KKdYot+IUzxW45wP9WyWomk7dKztdoKhTBPrvJTUme1gIlt+BJe1nSWbLggoGFCQD0QXWWaPTSnctedGufNeRLvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736267154; c=relaxed/simple;
	bh=Awl3WBJ9iS1lhiVSUV2Oo/4H+iXVzml75AdMdQO9g7I=;
	h=To:Subject:From:Message-Id:Date; b=LUTziWsXSt6HSilPVM5YHtmnfGwXuFtV5MQxAvOLo62q/hGVYmFdLWjKvjABe0EAm0yG9ahbqFjGpp2lRvZqSx9PUwodscCm7OYyTxEUoCysgkByz9XgQHWd8D8JiFlY6SqMQPgqOEWcO8rQwgmYLhGwlR3AfHEXZZhCZUTsxlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqukPLw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqukPLw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E32C4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736267153;
	bh=Awl3WBJ9iS1lhiVSUV2Oo/4H+iXVzml75AdMdQO9g7I=;
	h=To:Subject:From:Date:From;
	b=CqukPLw01fXG4TieifDQn2LVO2A5xfTYU+8urJtudMZxRozswH93iwPTiQQMuxNHE
	 J/YfQH8UxRp/h8kGTKQdLjImXwcbONSBwsAw/pTmaGuxbKuMyTYUDTTBkMzMlXZF+B
	 CC4/BMFv1xRDEsS0g2AHjgQkOyd423pFu5ueHv14gG3GqP8DCr6bI51sWFBuE0UxZW
	 Mf91+KX8MPPaOxDZiTqnDSVzmRYZoh/xHOiBKOy/kEd1tuw7sEphBmhCeIQzI6mWf3
	 HWCtvBnJ3T9CFDZUMtpaQfLjMhSUDnA2Ie1s6JQKbiUJGMbFih7k9fwudwVKrmO4w9
	 puQqlJN15nT9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C1BE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626715358.25746.2688622484354275742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34074c5124e66e9075a3d4a5b6a460b882959a04369ef076f0298ae23a04878f
Date: Tue, 07 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736267153
