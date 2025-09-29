Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F061EF36B
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759135194; cv=none; b=cNhR7OPx1Mc7ze818b9wm6oSmeXUxhqDCvM9OJdf4O5w/Nd0fpX4+7LDr75AA+2xEiNNWThRDgmPepMbBtunZrClJ3etzWf2GICWsFOwEkrKXT/eQbu5g0+HKFK0sbfNpKKbq/YJNO6ywNkbUZNg77B3UjBKGBOU0b0XKK7JsNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759135194; c=relaxed/simple;
	bh=okx9jLBqBqSr0EQjC1ZCr3zNnvnlz7cTnHlEQsQQPVk=;
	h=To:Subject:From:Message-Id:Date; b=jfdldqgQcBHTWd7n/67YF1J654Qr4NlMRzGa7tB5SF+h8gOl8FAn1yZg+XohFyOQtWAph7k5FyLQZ0LcMIL4Uwkk5O1rDgxxb5CoJ+calD57ecJLx5iezOXZrJJ8JW3MLBX99XBe1BBMap1+BVVbpUtoqUzGOgRCVQr2GI5eY9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeGMUiU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeGMUiU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C1CC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759135193;
	bh=okx9jLBqBqSr0EQjC1ZCr3zNnvnlz7cTnHlEQsQQPVk=;
	h=To:Subject:From:Date:From;
	b=GeGMUiU4dgz7ZKmJeNxbxA3uJ/JNU7QCKFqGe4P+NkZcwJNBCkgNEWw2KoyN5HSnA
	 JP35XA521SWCdlFnxjJ0W00fcbshxRtPBx50qTDDjR8BilxziQFWEgiu3/5xGic3Va
	 fYxa/esUBSsozQb9AI6Abl3O5LK2gjsBJOUrQ/hk+7Eft5MWo7ugGl+f9nOdjQ0xl7
	 3eoZpQn33+Nv04/X0sPGA0GYaKQRTalb58kDR3itEH5rk1WEfn/atFloNgRShFW4Gp
	 ksTWRVBEi3wTkR+jxFAxs0L90R10Gf/UnloG19YDhgt0H902eegKdefIYPzC77loJi
	 T7kxOeHV5c9QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE9FCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913519362.9201.3267662567499395671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a23677451fcebe9c1acacb5ccd0e327371eaf7426d6934dfb8024a736a88da
Date: Mon, 29 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759135193
