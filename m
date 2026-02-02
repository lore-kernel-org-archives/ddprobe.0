Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D48018B0F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770009834; cv=none; b=qfJQLRsh7N0N8/f8ux8rAPK7KwAOTymueEXL4YXnmyPVhuFCWUPqoHRQJiDnZSaQBe3l/As70DnM7fzt9eBqrBU8WEDpftNTQXtHFk1G5BGa6YfjAu62dxkvnpEJjrpyqg5fwflZRfLHWQAwnH1+rQv8Avg6XojdujOgFCKmQ8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770009834; c=relaxed/simple;
	bh=GNB+rSpmYANd5OZfTbbW0qy/DFLzmQObsiHbB7/MJJ4=;
	h=To:Subject:From:Message-Id:Date; b=ly/+wWVZvjelc+6QCkxnWRk8Hho2cY/1lTQkg0T9Ek3MrOcUkzoGldFwnczPAc/pivUfdKmYJY799sbx9R4I4QAZYh5gapIHMRHZwoX98LCG025CJgIYlbIQBs5YKzGF59RNHPAVglMlAHqyrdazsXJv5TEIkhKsUjdIF6WsBlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3An6dMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3An6dMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD515C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770009833;
	bh=GNB+rSpmYANd5OZfTbbW0qy/DFLzmQObsiHbB7/MJJ4=;
	h=To:Subject:From:Date:From;
	b=W3An6dMYYu5wA8bArR9q9ihMoJnY1SiWCK1rK+7Dl/W5VeANiufn6yPSDXZmcdnOb
	 5B7Al+oQLX6mn3VTIGdq/8fqqyF1k8WmEuszDSTyd+d3DllGK1c6V1Rps5/FVDT1mB
	 SjiU8VRsXOESJTcn4WXz0335sF/jZWb9/HkrefU/TK2E+daaZN1XX9fpEFarfpWSsz
	 NTKhvfjsODV9XiQmjeDXdWw9e1eSUxPtuXi6dv0LP8P2dx3JJpIxesvjDN5caRvGl7
	 nzx/zoUMXarks0pJOzqJL6kMiPjtteWSJW2VWhp3xoWyS0KEI/56+CeWz17I+dG0JO
	 uHfJjagROzJUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A248D172CE
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000983360.3682.16095913654348126360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82047a1f6ddfc930ce34646f710f8b0a92da9a92b1d1710548e9ff29d9bfd04c
Date: Mon, 02 Feb 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770009833
