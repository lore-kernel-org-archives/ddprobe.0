Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382BD1173F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722776154; cv=none; b=usiAttr6niXQ9Po1yQJfnlUgBH6vFzyX1kR3CC19SXOLe43iDG/Kfo4OEq7DjJDX9pZPvah1QdPxokOIpawxFIXk5mZbMqaZ6/axI13w6XDdMq163fWGxdGEH9hr/4HQux2qvvEmFSrG0v97AtPLn7+Cs4dhQ2BIuj1kUvTpqMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722776154; c=relaxed/simple;
	bh=8J2Da4xPQkGeiveaqJ/Z3ecGTMzWAkpcDxg5GWtuY3Y=;
	h=To:Subject:From:Message-Id:Date; b=SqDl8ZWXDqXaberhjdHFvVqqlcf/0XBYPkaVwQ4qLS0HQafw9jKRcfFTabSDs3s56iHHrJq1s3BRHxK4Fj/+BFEcEbBTJohlrk8UNOopC7u5wx2zbp6O4DApiQeCaGNADzfhBXl5mUsDVGjfmwbf093guJILHeos1soY4y5cXHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUUQiiRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUUQiiRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BAEC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722776153;
	bh=8J2Da4xPQkGeiveaqJ/Z3ecGTMzWAkpcDxg5GWtuY3Y=;
	h=To:Subject:From:Date:From;
	b=mUUQiiRJrigcmkA7e5O9Q5LM++4jtLo33e8jxIEb50jFmZcQLsdNDVZ8xKg55tjJc
	 2WEjF/56LybmjSl83tb99r0k0Cb/7Tm6sDa3zLrBeqdfUao83VoTNWcDzB9SgaalOO
	 8Z//kIsfFkJh4eAXVWopbCjHttbJxuk58hWKEQfC76gydsDIn8IXuDVNOGh7sqWZ2n
	 Rw+cMUPvNgWBme+WAWPNwvJMoQEFtS929cOnJYvIs5RdB6abjuiCtccITFgslcwnoe
	 YAvjUkrvpazVl+s5dv8WUcuahQy5K/B0uFe/1/xa7xrKnzRkzMME1LjaxS00TeyQ50
	 fJK/usvC+WhlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E216C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172277615360.13210.12265004779130642350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e81a7b2488ddd26f4b3a9ca7ee826ba6bc25e1a17fb53fa401297813104c80b
Date: Sun, 04 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722776153
