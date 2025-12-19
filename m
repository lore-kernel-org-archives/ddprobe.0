Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2070035773C
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766162634; cv=none; b=CHBCbDra7qtOfzrbrst3y/WtRh7CDbvYckkX7+1lKVgW8rwDcfW8wRTwuIaINMsxrzxfKKEqgl78iag3t6AUNUA7eFG1slVIU1ppdU1gOUqv5VCpK4BmyviKqAAsS3sbmxitUprtB/5liDmb+XGi1s80p90jvxDkemwYO0Go/fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766162634; c=relaxed/simple;
	bh=tqtIZkRs2ipEvauZTbNt7XiLYV3a4cauLo+r51uGylo=;
	h=To:Subject:From:Message-Id:Date; b=PWRV/Z5+sJ0hut0CQcEvsqn0z5FJnutxMAajvrcjSe4UUULJ+bwknrYMqTm5G/aO/HGZxqjzKFLRLdNEYLZ+Lv4A/XLxO5xSZQ+ognjOJnPwFKb0wH25i+/YQRlTLuoMKGGaUiTJEnfTPySCk5ettgV/8jtyxTKY331J3SRw+P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HC1Vihmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HC1Vihmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18DAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766162633;
	bh=tqtIZkRs2ipEvauZTbNt7XiLYV3a4cauLo+r51uGylo=;
	h=To:Subject:From:Date:From;
	b=HC1VihmzykNc84xuxzOMqwMk7Q/H27wcRx/iHyjgt+XzApu7bVYX2CO1c4w+TVUAA
	 DFLyACJK3rFJYxbUmx5hdnamxtiiOCspHKSMP2sp80ykWl7mMPJUWP+8vclriBu6/u
	 DsXtUfFAm42clehTEpZdvfayzru3C9/0kqSRzbpjiWmZ/4K821oc47z/al4LVrVSM7
	 QeleaqInLVurmSKbL5LZ2rV0pTCrkT3KXhO7Q6SURMN+bkJCgzy1zZvNOXWUPPU5un
	 ovpYjKkl01xTZ6BxISW40xkqS7Q0nWNQ43Mu3FjCwnD6Wpx9krlIj4/mEPCTuin2Yb
	 yn+lni71P8lTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF96D7879C
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616263358.23062.14221511511831641979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5447f5946fae913c27dbf8495b7d8c20bc1129af1f75d5c2ba2c8efdb68928
Date: Fri, 19 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766162633
