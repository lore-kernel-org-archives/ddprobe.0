Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD6A1CCEE0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749060594; cv=none; b=KRjsoOo6geaqAlcJ8ILI3jxUU8SP7+ch9zqWFUleHVEr6jz5nKIDmIJzWgXOJlRSUjqVdvPNgSmxN0kqx65dQXzcNjxxWbPx8/prSeXqBT2sm0MlPyr4uOtO8v5Yu0A+FM0H1bOQVTjPW7cMUMqLzK8ioveWoYLLfLUsVbk1zgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749060594; c=relaxed/simple;
	bh=jsZewDtdTGk7EihW6OSNJjFEgl95t6QnD/DANbbhzXA=;
	h=To:Subject:From:Message-Id:Date; b=Z3/ft0G3/t1Q0vghI6qaxlctgpUWIikdfsDdDetqE1z1EEh7TsXssxo6U1z2fqAjYIpcLk+9PaNFtsGx5+SByyyPQm0IP7y0YYLttPA+ha9AZF5VlrAJaSGMuGgUMEs/ZRjEduqdsjzYXWvhdIQ7JLTCCHIzz8GwjeWBlKQaEQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXNnC5io; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXNnC5io"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD1DC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749060593;
	bh=jsZewDtdTGk7EihW6OSNJjFEgl95t6QnD/DANbbhzXA=;
	h=To:Subject:From:Date:From;
	b=DXNnC5io/MdB9AhpmVnJJ8uXA/e7kpDFhzR6bK7KO/uohgxNagd9H/Fq6dDhkAys8
	 mo/gq0CrQnU69JRyhVYem6bA0RlTeLITvZq/JN6pnSl5P6JO0vZnBQPWmi/zGdduKk
	 5j1CR2OqWwJG0vjYfZQKzSP5c9UB4xQnHkH7WVcFwA7/h0Kwp/8WIUKwr8mDghIcAJ
	 ezIZTLFkUaRcqb/xERREl/GS712UpbCjTIjt9DIv5iktaMglPveRcHONQ9t/x+yhVs
	 p8zv2/7Orlqox56erghQDbjdjtVl8I43JoS2THg0YV12lrTuTef2KOx6xBRR4JoDJG
	 J2VUzW6QJTp5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954D2C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906059359.13109.17095694540632653084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba57c8fda127bf0c76ca9a71459f27084fb5c18cf0b00d606bb3733e55b5f8a3
Date: Wed, 04 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749060593
