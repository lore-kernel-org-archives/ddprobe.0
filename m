Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C82243954
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764313974; cv=none; b=bmHSbj9BW0JoWmJKLkSDfsV8pB2wDex6AksXSjsEa0iICrJiqYGP+QQUpAFnP6iiuxuWwnVuzGni2dgJOWuhFEjWhKpzHc8J1d4ILZM4TKyzAXQUc9a6W5LzUDzg7HBdOoIgUgfgQkVTeuZIsB4MABRqb+apGOajkqDZHnavYzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764313974; c=relaxed/simple;
	bh=rISFGhEV2Jn3tu4SA1PSazdVz8V7Ya1BviTjd9Xx1Yw=;
	h=To:Subject:From:Message-Id:Date; b=ilZSsL0QGU8f0oTt9Sfom1qXAMiNPwe9ItC6tXJsxjsOStV7zzDtNrCEe31AdyYft6j7cd2E91LWueazdcuNfoSByH2Qk+2W3PT86x8mic/Oox0iDS9Q1OJM6SFZbItzfuinRjy6McytBPmrxQYaZT5n7NNS3BEUVXZjeqFJiDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irABoxcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irABoxcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2059C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764313973;
	bh=rISFGhEV2Jn3tu4SA1PSazdVz8V7Ya1BviTjd9Xx1Yw=;
	h=To:Subject:From:Date:From;
	b=irABoxcK2L4oLZKJE3634nOwQqU8YsGxI8tw8kIF5XCNd7Dmlv+h4Eo9bCN1V5lqm
	 xYe/oPnLVOnS5g7NirOe7OWB5/gEf9x61KoZ4ESBYaZhB54zWFjlbAQBRWqaIUSp8C
	 Iz2uF9G3DCJNjy9h39V3WRel6mFITiYZAnDPBfyK6zkd1xicUEd//I9oR2yqWEt06M
	 jP3ikPaAW9/KUZAQIOR4vvQ+0GfeNNI5+a6H3QP105+2XwUmEucH1Q5HMajirm4biy
	 eyKwwRXf1wQhXyeDrfTh/a7mXk+6cgrv7fb0Fws/3tkXxUwTvD7li1htd/e5f6wWNy
	 3O219Y5Qw7ugw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9012BD116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431397358.5085.2799951319712088380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cada61465befb51194ae3ea8f78f5c4c5611c968b687e470b55ffa23370f4c9
Date: Fri, 28 Nov 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764313973
