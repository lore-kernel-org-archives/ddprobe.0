Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E253BBEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727205354; cv=none; b=cBNaqt9QMinfvP6qP6drfwaMPp0QXi1JmggqGuydSyCNB9JGdZ0nCU/EjJi0MTHYtTq4FRkmyh8AklPI8voIjcIbczBuahkqp3llOJCVb7GoKoDrCPxaZm5QIL14qbVZca4SQ12A4BcJe+XWoBnJHgGkGGv9/2hXOAXPW4snbwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727205354; c=relaxed/simple;
	bh=fFRtU1ugMl1XS7NoII8zRnncxBEGQOsgTqxNDIDXco4=;
	h=To:Subject:From:Message-Id:Date; b=j9KIQ0yhU0npv8ugAMpHTfhCgSXxRWpxJp5iOeVE5srhMZIsN7E4N8cHlhE3Fnbqr0x+/gw1NfzQ9PLYfJSUuEuP7+ht/AN3y1ngaDkrTiivSJhpWXPkXcGnbgTgF+XO+lzi4PgyOA188eWasFnPiz2pJrLKm1snOfc+5WjBwjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmSuCS5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmSuCS5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76B2C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727205353;
	bh=fFRtU1ugMl1XS7NoII8zRnncxBEGQOsgTqxNDIDXco4=;
	h=To:Subject:From:Date:From;
	b=ZmSuCS5fgI/CYqehx/G7uTo41vS/EDPa4RsCJJs9EfM4uuCbYNCLPTr8fUBFJ+g7+
	 oAzoyCKa1GcfA1Ybb4hFOnBn5xsktdrQ9ERfvKQwxUNymnFqudL+ujDVm4CCW25b+8
	 NN/z4BMMk4j4ERJEs+c+Y1Hb+Y7iHVrd0CBzU8HqCZYU92EpleKe/K38fHFpAxCcDx
	 XdYQxa/s5HAtyIiIGO4qEasG3j/A1rJ6kjjkdqs1XHyX4OiMycxFJmnF/gS0pF+IGl
	 3/CkciLAfmdNruEsI52qYK8xsO9TPv0XG/E3bfC6xBqFh1jlQMErlG7LsOyN7Wu5PR
	 FP2ECIbIXIrdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B24CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172720535365.24417.13105907351078353782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1582aaa9241900278acdb3d22c2cf8cb2232f48c21411fae20d6fc0ebe910b76
Date: Tue, 24 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727205353
