Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E46025EF87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774589094; cv=none; b=ssk99ZnI3cdSgeaeZ7S8/1D6sB5vtn9iFxLaz0ElxH0P+Rs6JgwJS4Mvfi0DXry58B+D7hv4Ca4gOCkNrfb3ecbiGPLbYeX8Cav0pwtiJo/wAp4ZbHw9zDSDlQtt59OppWjFOf8wQ52lwi5E7ZDFVuCUo8d0pmrBYPuHrp1gGaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774589094; c=relaxed/simple;
	bh=fIQGfieDqXMWMWyUWRlIX3eCu8dj08bXxo/iMVwE+YA=;
	h=To:Subject:From:Message-Id:Date; b=IekmEFrFVZ00w8H9P7zEi9vyhVP4X68EwkY3J51RIkpi8Aio18823TvtZs0onDzvacOUxhtHS3Tmo8xooJ2IysFmlFm339AUg1tReq3a6n7jpoGiDArLEaqjMdXXBdvUAElwy9GnYjvdbypGEedHv2R6RPaK+OlUsqb6mC9OU1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMGH+u/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMGH+u/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B656FC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774589093;
	bh=fIQGfieDqXMWMWyUWRlIX3eCu8dj08bXxo/iMVwE+YA=;
	h=To:Subject:From:Date:From;
	b=HMGH+u/6GDfdR0b25DxUCZIAQYrRAqqD6dAukAbliQ1U6TWAe4PrLLlUzB0CBGvvB
	 khaynC1B/GfiW4D1C5Q+YhGtG9lAs4eD6vPwI7INKLnXSH8l9KHeyitABqzdHSi3Sv
	 kvRZSbDFCCuK19Gb1ABsWDIeeC5RUI3ZGVd8xAU8XrlQyqokQNax9x2tA/KMrPMVG/
	 PGE9OUTQ88gWxUk/2Bm0BYZiR/0dK/+3J6xeXM6pqej0ycDHLsHrPZr/Ib25wepv20
	 b5cMgwfMLanXlSO8LYgXbqx8W2q/BaciNeL3DcCPce8Kif9piNd26EjT3tEAggFJXh
	 KKYIP30oz8g3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39B010BA42C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458909363.21283.1109370391035738331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d012882f4b740590825515be73a863c6ffb08e7682fc164173c13b120c39a9
Date: Fri, 27 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774589093
