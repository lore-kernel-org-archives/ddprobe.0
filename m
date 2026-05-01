Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2744836B06D
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777642654; cv=none; b=CZU909J/SawyKi1N6n1YMADP1zKy9Abtpys1jBO+HTsJjHez+1/7Gqge8Gc2nqozVPyD7niZVBKxG/4aZDM97qvteXbdUd8qHfB4UwfdyR++OVesWgJBmcH+dJfnG60cIBQA7w9+3c5IvIxXDSZMHpYPwYZslBRJUxlUgkXHFGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777642654; c=relaxed/simple;
	bh=FnrV/2I6HJ3m8LvYB+VTllW145o6ZaLFsOvB9eLZz64=;
	h=To:Subject:From:Message-Id:Date; b=HMUE2hLA+d/nyj7lln9pw4kg0RpIA66fnBHxoKjIos16BSsGAsMF0yWDl9fUcnnuZnfPF2W5keJpywzdhnmWbhf1EufYKns9pzUqVIHY0EkwCYKkM7ibtDNQ4bI/9M/apcdKEhQ7nbMUDygh32i0qnchY8hmtJfff2gcxGaArS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYLvVdGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYLvVdGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF55C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777642653;
	bh=FnrV/2I6HJ3m8LvYB+VTllW145o6ZaLFsOvB9eLZz64=;
	h=To:Subject:From:Date:From;
	b=pYLvVdGsfPjClQgjHK0qNfSIzah/oCXkUmcnlCHOfrV35P7K4T6TOzMkSKFtyLBmN
	 kyu7MgJPfZa8jkIErXszBBAzyNRXnc5Q1RLlGC5nG9wuE/ULBdKpOCbG8djXzLIhVC
	 8NLZjCsNdCU7jzU+XF4SfSqXeK5lzNUp+W7tbtg73LeJGWbqZSxOeIt9zR68ZLRH8+
	 qnd0rvnSAPniCeTvGX1eXSusL9BoMBC8y3o+miGsdhP3IYeFnVNbsN33qaxMJe0XEl
	 LQLszfwtv9bCViY2CHDuj4nWpviu9iPz0HRgcItp4rCs85o0FCyu4IkPrN9NUpdzpF
	 nOnKpLl/nr2Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA588CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764265368.21740.10250158118645098028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cbcc51d3bcd8abb37b67d0cca5c107325ab0688ca6a0cc878c4aef32b043eaf
Date: Fri, 01 May 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777642653
