Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C78417591
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733549754; cv=none; b=UCOU1b5zDTmIdwe5JR5IPGTqN5TDIaC4mQEhi9ZkOX8mibYqK0Xcb+82wY0YcU2gRStmKnI/evB2ZOP3kdMizxOZ9h8FsMRAh7TaOeyR1V0kWKXp3x6LScejvdgOXl4cjtQCqNCGO7esoGsfNqxWFv0qze+qGenCgoEol8D1ods=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733549754; c=relaxed/simple;
	bh=luq9S1vDGYlfGVImCf8vV25ylMa3Wzj2/RQABytCHos=;
	h=To:Subject:From:Message-Id:Date; b=l/JV3D0d5oxwxPiAAPe0KgZNOKrEotMXp3PBcduuRoPRB72VUek2z+sAv0AVHJqxa+2CDsdn9TP1ijSusgbk+QkXnmaOGfhHdxf+PD4k4CCkZe7LbzYX6ktY9Vw6i8rgnvF+VM7AxVIBOcu/XWxE4oKMrBCQTwCE9gkqQs5+pyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoJP+5dT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoJP+5dT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AE8C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733549753;
	bh=luq9S1vDGYlfGVImCf8vV25ylMa3Wzj2/RQABytCHos=;
	h=To:Subject:From:Date:From;
	b=DoJP+5dTiIJe8YfBWoDkb+zQL6fkrcPsMwFg6k9yN+tagphaFqX4VhK3io7SdkfO7
	 CVsRfY9AGGWvuesGldxzPh9ym1VLcM9UeKNmw+/LSJPczrEycAUkAdDiFfucbRYcCV
	 yOMD5KW3gn+fTqgJiifrvgLa5WXKIfee7dybHtMgzVjiJt6HCtWUTHZub55ZhE3Jva
	 fXNXLZFLsoJzCaquwnjXF19y3Oc+sTVFcPMmhiV8YV6p6qRTpwNUZZ9yctmPIR1ZxJ
	 /yMaBEDoXPqQRSROzg92EO6zOK7xaST6vV/gmBk8d8lCu/yRycjFv2i9UYMo0sOD7W
	 ZJvxxOpA0aqfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968EFE7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173354975359.20391.17437932325350599996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816a57173061f349ff0362004048d6b4e1136a8c2dfaab9605b7336f44f51dfe
Date: Sat, 07 Dec 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733549753
