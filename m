Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9C11FF7AF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730844354; cv=none; b=R8UjLftgvAsv9zvUt56qq/ev7bvtt1sTBVEcPMavskp8Lqbcx9gQ5bX1zjKbtnZOHzdEuADfRFMMB8lElafllk1vtGB+zJ0RjD2G/m6BVoOXWgwEgbkWRvA3+u2zqwAg1kE6agkVDi3OXm/Eg0lX3JNsnv36Dshk6TEBcH/ySDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730844354; c=relaxed/simple;
	bh=1uTRMgkZSuLnLJvf0DUICRTsmgyGJO+5373vPdvEA1g=;
	h=To:Subject:From:Message-Id:Date; b=JSDHBonff9prZj4InEEzjo/YLhBJSMVXJhj+J6Z9ZsRvv6rxPmOeLMswjVwjLQ7FarU7oERHhuPO/nXVwqCucxj/GQg94V9UUCLu7zrerfHjO2DxAgYooD/5nRLl/LzbtMApaNBrlJEjlXrrnib3cW9CGrmQO1uDTb5DUwID4g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrI8lCAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrI8lCAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9CDC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730844353;
	bh=1uTRMgkZSuLnLJvf0DUICRTsmgyGJO+5373vPdvEA1g=;
	h=To:Subject:From:Date:From;
	b=VrI8lCADZE32/eW+yz09gkKN+30SuIWKtiiHBTz0FI4mkhl6Ah0jIgqYUSB7IBp3C
	 vAzVPO4nYx4Mx6V0OvAf0SObM5q4rv1kkl0tl6RGYaSZKoz+4yLNBRNu+J/SREtRws
	 uqDvRHBPtiZz6zl5BRo0yFUlfrDa2YuTIL5sGYq6iZAt/PTZsjzVNx7bj5gaAUQWb7
	 PnxfdEZ6j0retFp7O/727zU+OwoTeP9hCEv14A77QfpO81PASmM1ntcZNCsAf5uB5o
	 W3Y5qBaiXyAAghWYXeU2GT40P7KbYT2IvRqtm88hf+PMFv5tnSR9W8EVVOR0e2lBV8
	 RVzhMi7CjjEvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A65D3E778
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173084435361.24511.2328670746056441951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd4cf080085116ef81789e2d36b6d411bc762444080afe519b36165b8359314
Date: Tue, 05 Nov 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730844353
