Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1174230EF87
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772805294; cv=none; b=o6OYMcFbUm0/+QOwkqt2rHuUJH65ej2jWWlIQF4ygbBxY/QXf4RUsHLYGnJZquviCEYDaBNZ29vkWHda6dr/yteKS0TpSTIVpu6msPAfwHTcsoeF3NJS411pBYHP/5ykJLlMerzM1EXGfCUAyY+GuIrB7A+BteFa5bXbCDWOQ3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772805294; c=relaxed/simple;
	bh=dDeraX+mhhOmIRMYzTsVOmw2wCgAYQYFzxqglfBTudk=;
	h=To:Subject:From:Message-Id:Date; b=Abzgvin8Kqz1v1u2SSAuSTUfdP+om1PS+VpgVh4ksudgTSgmQx8RkZjnYNW6YpDKsbLroP5IR/9LF72bDsv5SftXUB6hUo+0JAEVW/rB/XzQ2CsvKJoBux3Xki9bJ1tMUBjnqupLfFzBKDnoK3MUTJq05qB3QebWp6LJQjfeu1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnZqyAws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnZqyAws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6CFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772805293;
	bh=dDeraX+mhhOmIRMYzTsVOmw2wCgAYQYFzxqglfBTudk=;
	h=To:Subject:From:Date:From;
	b=TnZqyAwsHSm7Z6gGoOdeIN19RPipncWR5xxOJclsa0K2EerJ2yWTvxkVM8RbaZYi6
	 v4a60lr4koud6UCRbRXF7WjHM5to1cthvCA+hqeKVqSJsc4bfPD2Db8SxClqyFT9GI
	 rvgygkGxS8T+YAZy8Qxk07TGe78qOBO8yMM+NTDi91Ax+SWi8fPRH55TDI9oOTTbrA
	 74nJJnkZarf/MT710KqcxDEoLG380DzKJf3RRZRN3fXNCCO0LP6R8DR7G+q3GmNtNJ
	 vvx+9n+oQ351cD6zfedYkGudxb8xQyPCaOHTEUZLdBLsHoPkw8oV/VVMmY68XgD6OS
	 AV/iZJKR0XPow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F747F01835
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280529358.12311.16247443228298507361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78e4e2dfee02127a853558b38570840a3d525d5eed361f9afd7ca02486a1010
Date: Fri, 06 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772805293
